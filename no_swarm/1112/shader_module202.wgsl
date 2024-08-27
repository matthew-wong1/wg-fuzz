struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(select(!(!vec4<bool>(true, false, global0.b.a.x, global0.a.a.x)), !(!global0.a.a), select(select(global0.b.a, vec4<bool>(true, global0.b.a.x, global0.a.a.x, global0.d.a.x), global0.a.a), global0.d.a, false)), global0.b.b, ~reverseBits(vec3<u32>(835u, global0.b.b, 0u)) >> (~vec3<u32>(82743u, global0.b.c.x, 1u) % vec3<u32>(32u))), Struct_1(global0.a.a, min(~(~global0.d.b), global0.a.b), global0.a.c), global0.c, global0.d);
    global0 = Struct_2(Struct_1(select(vec4<bool>(var_0.a.a.x, var_0.a.a.x | false, any(global0.b.a.yxy), true), vec4<bool>(var_0.b.a.x | true, !global0.b.a.x, true, true), global0.d.a.x), var_0.b.b, global0.d.c), Struct_1(select(vec4<bool>(true, false, any(vec4<bool>(false, true, global0.b.a.x, var_0.b.a.x)), !var_0.a.a.x), select(!global0.b.a, global0.b.a, global0.b.a), true), ~(~(~global0.d.b)), max(_wgslsmith_mult_vec3_u32(firstLeadingBit(var_0.a.c), reverseBits(vec3<u32>(8508u, 1u, var_0.b.b))), ~(~var_0.a.c))), _wgslsmith_f_op_f32(1684f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c + var_0.c), var_0.c))))), global0.d);
    var_0 = Struct_2(global0.a, Struct_1(var_0.a.a, _wgslsmith_mod_u32(global0.d.c.x, var_0.d.b), (~global0.d.c << (vec3<u32>(21680u, 7501u, var_0.b.b) % vec3<u32>(32u))) >> (vec3<u32>(5654u, 44768u, 45733u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(-global0.c))), var_0.a);
    var_0 = Struct_2(Struct_1(!vec4<bool>(true, select(var_0.d.a.x, var_0.b.a.x, global0.b.a.x), true, var_0.c > 1715f), reverseBits(~firstLeadingBit(75624u)), select(~(vec3<u32>(1u, global0.b.c.x, 0u) >> (var_0.a.c % vec3<u32>(32u))), vec3<u32>(var_0.d.b, ~123773u, firstTrailingBit(4294967295u)), any(select(vec3<bool>(global0.b.a.x, var_0.d.a.x, true), vec3<bool>(var_0.b.a.x, true, true), global0.a.a.xyx)))), Struct_1(global0.b.a, firstLeadingBit(global0.d.b), var_0.a.c), global0.c, var_0.b);
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(~global0.d.c.yx, vec2<u32>(26391u, 88652u)), var_0.d.c.x, min(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.b, 1u, 59678u, 28291u), vec4<u32>(24903u, 2527u, 4294967295u, 83939u)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.d.b, global0.b.b, 0u), min(0u, 1u))), global0.a.b) ^ (abs(abs(~vec4<u32>(14563u, global0.d.b, 4294967295u, global0.b.c.x))) ^ ~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.d.c.x, 69939u, 89458u, global0.b.c.x), vec4<u32>(0u, 4294967295u, 7585u, 4294967295u))));
    return 15995u;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_2(global0.d, global0.d, -151f, Struct_1(!global0.d.a, 4294967295u, vec3<u32>(_wgslsmith_sub_u32(global0.d.b, abs(global0.d.c.x)), select(global0.d.b, 39171u, !global0.d.a.x), func_3())));
    let var_1 = Struct_2(Struct_1(select(select(var_0.b.a, !vec4<bool>(global0.a.a.x, var_0.a.a.x, var_0.a.a.x, false), !vec4<bool>(global0.d.a.x, global0.a.a.x, false, true)), select(select(vec4<bool>(global0.a.a.x, false, global0.b.a.x, var_0.a.a.x), vec4<bool>(false, global0.a.a.x, false, global0.a.a.x), var_0.b.a.x), select(global0.a.a, vec4<bool>(false, true, false, var_0.a.a.x), var_0.b.a.x), vec4<bool>(true, var_0.b.a.x, var_0.b.a.x, var_0.d.a.x)), true), var_0.a.c.x, ~_wgslsmith_sub_vec3_u32(arg_0 ^ var_0.d.c, vec3<u32>(arg_0.x, var_0.d.b, var_0.b.b))), Struct_1(vec4<bool>(!(!var_0.d.a.x), global0.b.a.x, all(vec3<bool>(var_0.b.a.x, var_0.a.a.x, true)), select(any(var_0.d.a.yy), !global0.d.a.x, var_0.b.a.x)), var_0.b.c.x, ~vec3<u32>(22497u, arg_0.x ^ arg_0.x, 0u ^ arg_0.x)), 1171f, var_0.d);
    global0 = Struct_2(var_0.d, Struct_1(!select(select(vec4<bool>(true, var_0.b.a.x, var_0.d.a.x, false), vec4<bool>(global0.a.a.x, var_0.a.a.x, var_0.d.a.x, global0.b.a.x), global0.d.a), vec4<bool>(false, var_0.d.a.x, global0.d.a.x, true), false), ~(~69986u), ~firstTrailingBit(vec3<u32>(74024u, 22063u, var_0.d.b) ^ vec3<u32>(19119u, 4294967295u, 1u))), var_0.c, Struct_1(select(select(select(global0.d.a, var_1.b.a, vec4<bool>(var_0.d.a.x, true, global0.b.a.x, global0.d.a.x)), !var_1.a.a, !var_0.a.a), var_0.d.a, vec4<bool>(any(vec3<bool>(var_1.b.a.x, var_0.d.a.x, false)), true, true, arg_0.x == global0.a.b)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1.d.c.x, global0.a.b, var_0.a.c.x, global0.b.c.x), vec4<u32>(var_1.d.c.x, 1u, var_1.a.b, global0.b.b), global0.a.a) | _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 58683u, var_1.a.b, 7733u), vec4<u32>(global0.b.b, var_0.a.c.x, var_1.d.b, var_0.a.c.x), vec4<u32>(11180u, arg_0.x, 4294967295u, global0.a.b)), vec4<u32>(~var_1.d.b, 0u, ~arg_0.x, countOneBits(16469u))), ~var_0.d.c));
    var var_2 = var_1.a.c;
    global0 = Struct_2(var_1.a, var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c, var_1.c)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1006f * _wgslsmith_f_op_f32(min(-833f, 789f)))))), var_1.d);
    return Struct_2(var_1.b, Struct_1(var_0.a.a, global0.d.b, global0.a.c), var_0.c, var_1.d);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global0 = arg_2;
    global0 = arg_2;
    let var_0 = u_input.b.zy;
    let var_1 = func_2(_wgslsmith_sub_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(44277u, 24431u, 1u), vec3<u32>(arg_3.b.c.x, arg_1.b, arg_3.b.b)) | arg_3.b.c, global0.b.c << ((arg_2.b.c | vec3<u32>(8967u, 22772u, arg_3.a.b)) % vec3<u32>(32u)), vec3<bool>(arg_1.a.x, arg_3.c < -916f, arg_3.c >= 1584f)), arg_1.c)).b;
    let var_2 = func_2(~reverseBits(global0.a.c)).d;
    return global0.d;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    return Struct_2(Struct_1(vec4<bool>(all(!arg_0.a.a.yxy), true, true, global0.b.a.x), _wgslsmith_mult_u32(_wgslsmith_mod_u32(abs(4294967295u), _wgslsmith_mult_u32(global0.a.c.x, arg_0.d.b)), reverseBits(_wgslsmith_mult_u32(1u, arg_0.d.b))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.d.b, 4294967295u), global0.a.c.yz), 1u, abs(arg_0.d.c.x)) >> (~arg_0.a.c % vec3<u32>(32u))), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), Struct_1(vec4<bool>(!any(arg_0.a.a.zz), select(global0.d.a.x, true, !arg_0.a.a.x), true, false), ~(~10565u & (global0.a.c.x << (4294967295u % 32u))), func_2(global0.d.c).d.c));
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(Struct_2(global0.d, Struct_1(!vec4<bool>(true, global0.a.a.x, true, global0.d.a.x), ~global0.b.b >> (firstLeadingBit(8591u) % 32u), global0.a.c), global0.c, func_4(~(~vec2<u32>(66413u, global0.a.b)), Struct_1(global0.b.a, 1u, abs(global0.d.c)), func_2(global0.a.c ^ global0.a.c), Struct_2(global0.b, global0.a, _wgslsmith_f_op_f32(352f * 844f), func_2(vec3<u32>(global0.a.c.x, global0.d.b, global0.a.c.x)).a))));
    let var_1 = false;
    var_0 = Struct_2(var_0.d, global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c), 1655f)), func_5(Struct_2(Struct_1(vec4<bool>(global0.b.a.x, true, var_1, false), 4294967295u, var_0.b.c), Struct_1(var_0.a.a, var_0.d.c.x, var_0.b.c), -732f, Struct_1(global0.b.a, var_0.a.c.x, global0.a.c))).c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(737f, 548f), global0.c, global0.d.a.x)))), func_4(abs(var_0.d.c.xx), Struct_1(global0.d.a, func_4(vec2<u32>(var_0.b.b, var_0.a.b), func_4(global0.a.c.yy, var_0.a, Struct_2(Struct_1(global0.a.a, 44955u, vec3<u32>(global0.b.c.x, var_0.a.c.x, var_0.d.c.x)), Struct_1(global0.d.a, 0u, vec3<u32>(global0.b.c.x, 57706u, var_0.b.c.x)), var_0.c, global0.b), Struct_2(Struct_1(vec4<bool>(var_0.d.a.x, global0.a.a.x, true, true), var_0.d.b, vec3<u32>(14868u, var_0.a.c.x, var_0.a.b)), Struct_1(vec4<bool>(true, global0.a.a.x, false, var_0.a.a.x), 69185u, vec3<u32>(1u, var_0.b.c.x, var_0.d.c.x)), global0.c, global0.b)), func_5(Struct_2(Struct_1(vec4<bool>(false, var_0.d.a.x, global0.a.a.x, true), global0.a.c.x, global0.b.c), var_0.b, var_0.c, global0.b)), func_5(Struct_2(global0.a, Struct_1(vec4<bool>(true, false, var_0.d.a.x, global0.d.a.x), 38285u, vec3<u32>(38798u, global0.a.b, var_0.d.b)), 878f, Struct_1(global0.a.a, 25296u, vec3<u32>(var_0.a.c.x, 4294967295u, global0.a.b))))).b, var_0.b.c), func_5(func_5(Struct_2(Struct_1(vec4<bool>(var_1, false, true, var_0.a.a.x), var_0.a.c.x, global0.b.c), Struct_1(vec4<bool>(true, false, var_0.a.a.x, var_0.d.a.x), var_0.a.c.x, global0.a.c), 126f, var_0.a))), func_5(Struct_2(var_0.d, var_0.a, -1000f, var_0.a))));
    var var_2 = var_0.b.a.xz;
    global0 = func_2(~((~var_0.a.c & global0.d.c) << (global0.a.c % vec3<u32>(32u))));
    return func_5(func_2(firstLeadingBit(var_0.b.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(countOneBits(-8722i), u_input.a), min(_wgslsmith_mod_i32(u_input.a, -1i), 1i)), u_input.b.wz);
    global0 = Struct_2(global0.a, func_4(vec2<u32>(4294967295u, ~(~1u)), global0.a, Struct_2(Struct_1(select(global0.a.a, vec4<bool>(global0.a.a.x, global0.b.a.x, false, false), true), 4294967295u, global0.d.c), func_1().d, -413f, global0.b), Struct_2(Struct_1(select(global0.b.a, global0.a.a, global0.b.a), ~global0.b.c.x, vec3<u32>(global0.b.c.x, 35342u, global0.a.b)), func_5(func_5(Struct_2(Struct_1(vec4<bool>(global0.a.a.x, global0.a.a.x, false, global0.a.a.x), global0.a.c.x, vec3<u32>(0u, 89512u, 0u)), Struct_1(vec4<bool>(global0.d.a.x, false, global0.b.a.x, global0.b.a.x), 1u, vec3<u32>(28129u, 0u, 1u)), global0.c, Struct_1(global0.b.a, 65360u, global0.d.c)))).b, -1000f, Struct_1(select(global0.d.a, global0.b.a, true), firstLeadingBit(global0.a.c.x), vec3<u32>(4294967295u, global0.a.b, global0.d.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(542f + -293f) + _wgslsmith_f_op_f32(-global0.c)), global0.a);
    let var_1 = abs(-u_input.b | max(firstLeadingBit(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(u_input.a, u_input.a, -37497i, u_input.b.x))), min(-vec4<i32>(u_input.b.x, u_input.b.x, -22675i, -33796i), u_input.b)));
    var var_2 = vec2<f32>(global0.c, 794f);
    var var_3 = ~global0.d.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~vec4<u32>(global0.b.b, 14901u, _wgslsmith_mult_u32(~global0.a.b, _wgslsmith_mod_u32(790u, 1u)), global0.b.c.x), global0.d.c.xz, vec4<i32>(2147483647i, ~(1i << (func_3() % 32u)), var_1.x | var_1.x, 50775i));
}

