struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 34820i;

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_2(i32(-2147483648), Struct_1(vec2<bool>(false, false), 1110f, vec2<u32>(30108u, 1u), vec3<u32>(4294967295u, 2001u, 95610u)), vec3<bool>(true, false, false), vec3<u32>(0u, 4294967295u, 9333u)), Struct_1(vec2<bool>(false, false), 266f, vec2<u32>(1u, 35549u), vec3<u32>(1u, 4294967295u, 4294967295u))), vec3<f32>(207f, 652f, -652f), vec3<i32>(1i, -1i, 17083i), vec2<f32>(-1427f, 172f));

var<private> global2: vec3<f32> = vec3<f32>(-491f, -1946f, -176f);

var<private> global3: vec2<u32>;

var<private> global4: Struct_4;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    let var_0 = true;
    var var_1 = Struct_3(global4.a.a, Struct_1(vec2<bool>(u_input.a.x < reverseBits(global1.a.a.a), !(global1.c.x <= u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(460f)), -1489f), ~vec2<u32>(arg_0.x, 1u), ~(firstLeadingBit(global1.a.b.d) ^ vec3<u32>(u_input.b.x, global3.x, global3.x))));
    let var_2 = Struct_4(Struct_3(global4.a.a, global1.a.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -2046f, -443f) + global1.b) - _wgslsmith_f_op_vec3_f32(min(global1.b, global1.b))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -906f), _wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(f32(-1f) * -669f))) + _wgslsmith_f_op_vec3_f32(-global4.b)), global4.c, _wgslsmith_f_op_vec2_f32(global4.b.zy - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, global2.x)), vec2<f32>(global2.x, global2.x)) - global4.b.xz)));
    let var_3 = !(!vec4<bool>(any(select(global4.a.a.c.yx, var_2.a.b.a, global4.a.b.a)), all(vec4<bool>(true, var_1.a.b.a.x, var_1.a.b.a.x, false)) & true, var_2.a.b.a.x, min(0i, 0i) <= (-1i ^ var_2.c.x)));
    var var_4 = true;
    return var_1.a.a;
}

fn func_2() -> bool {
    var var_0 = global4.a.a.c;
    var var_1 = vec4<i32>(~firstTrailingBit(_wgslsmith_mod_i32(func_3(global1.a.a.b.c), -35257i)), -_wgslsmith_mult_i32(-1i, global1.a.a.a), ~1i, _wgslsmith_sub_i32(~(-abs(42271i)), _wgslsmith_div_i32(~(-37678i), 1i)));
    let var_2 = 1442f;
    var var_3 = Struct_2(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -23615i, -var_1.x), abs(~global1.c))), Struct_1(var_0.yz, global4.d.x, _wgslsmith_sub_vec2_u32(global4.a.b.d.zy, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b.xy), 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global4.a.b.c.x, 1u), select(select(global1.a.b.d, global4.a.a.d, false), global4.a.a.d, global4.a.a.c))), vec3<bool>(global1.a.b.a.x, false, false), _wgslsmith_mod_vec3_u32(~select(u_input.b, u_input.b, true), global4.a.a.d) | ~countOneBits(~vec3<u32>(1u, global4.a.a.d.x, 1u)));
    var var_4 = firstTrailingBit(_wgslsmith_mod_i32(45186i, 7648i));
    return global1.a.b.a.x || !(true && var_3.b.a.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = true;
    var_0 = (false | func_2()) | !func_2();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-615f + global2.x)), _wgslsmith_mod_i32(2147483647i, -2147483647i) != u_input.a.x))), -217f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(827f - arg_2)))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(918f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))))), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * arg_2)));
    var_0 = all(global1.a.b.a);
    return global1.a.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global4.d.x);
    let var_1 = Struct_3(Struct_2(0i, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1356f, global2.x, 856f, global2.x))), global2.x, global4.d.x), vec3<bool>(!global4.a.b.a.x, any(vec4<bool>(global1.a.b.a.x, false, false, global4.a.a.b.a.x)), func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1416f, global2.x, 138f, 710f), vec4<f32>(global1.d.x, global4.a.b.b, -321f, global2.x)), -944f, global4.d.x).a.x), ~max(vec3<u32>(39441u, u_input.b.x, global4.a.b.d.x) >> (global1.a.a.d % vec3<u32>(32u)), countOneBits(global1.a.a.b.d))), Struct_1(global4.a.a.c.zx, -223f, global1.a.a.d.xy, vec3<u32>(global3.x, _wgslsmith_add_u32(u_input.b.x ^ 29781u, 1u), select(1u, global1.a.b.d.x, !global4.a.b.a.x))));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global4.b.x)), global4.b.x)))), 2531f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-265f * global2.x))), _wgslsmith_f_op_f32(f32(-1f) * -752f))), vec3<f32>(-731f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.b.b, -1000f))) + 579f), global1.a.a.b.b));
    global4 = Struct_4(Struct_3(Struct_2(global4.a.a.a << ((1u >> (0u % 32u)) % 32u), Struct_1(global1.a.a.b.a, -558f, global4.a.b.d.yx, ~global4.a.b.d), vec3<bool>(!var_1.b.a.x, global1.a.a.c.x | global4.a.b.a.x, true), vec3<u32>(_wgslsmith_mult_u32(4294967295u, global4.a.b.d.x), reverseBits(4294967295u), 51593u)), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b.b, global1.d.x, global1.d.x, global1.a.a.b.b))), _wgslsmith_f_op_f32(-global2.x), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(658f, 1158f, 986f, -569f) - vec4<f32>(global2.x, global4.a.a.b.b, 480f, var_1.a.b.b)), global4.d.x, _wgslsmith_f_op_f32(-var_2.x)).b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a.b.b, -184f, -1000f) * global4.b), vec3<f32>(global2.x, global4.a.a.b.b, var_1.a.b.b), vec3<bool>(var_1.b.a.x, var_1.b.a.x, global1.a.b.a.x))))), select(vec3<i32>(26513i, 1i, select(-107697i, global4.c.x, true)), u_input.a, false) & min(reverseBits(vec3<i32>(var_1.a.a, -43905i, 38750i)), global4.c >> (abs(vec3<u32>(var_1.b.d.x, global4.a.a.d.x, global3.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1090f, global4.d.x)) + global2.xy));
    let var_3 = func_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.b.b), 503f), global1.d.x, global2.x, 1403f))), global4.a.a.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -523f)))));
    global3 = ~abs(vec2<u32>(53308u, _wgslsmith_mult_u32(global3.x, abs(1u))));
    var var_4 = _wgslsmith_dot_vec4_i32(abs(firstLeadingBit(select(vec4<i32>(global1.c.x, u_input.a.x, global1.a.a.a, global1.a.a.a), vec4<i32>(var_1.a.a, -18187i, u_input.a.x, global1.a.a.a), var_1.b.a.x))) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-61219i, global4.c.x, 0i, -1i) >> (~vec4<u32>(var_3.d.x, 27186u, var_1.b.c.x, 83618u) % vec4<u32>(32u)), ~(-vec4<i32>(-1i, global4.a.a.a, u_input.a.x, -2147483647i)), vec4<i32>(1i, -36231i, -12324i, 0i) >> ((vec4<u32>(global4.a.a.d.x, 14509u, global1.a.a.b.c.x, 1u) & vec4<u32>(21457u, 0u, 0u, 15710u)) % vec4<u32>(32u))), vec4<i32>(abs(global4.c.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, 14521i, 0i, u_input.a.x), ~vec4<i32>(var_1.a.a, 21658i, 1i, 22634i)) >> (~global4.a.a.b.d.x % 32u), ~u_input.a.x, firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.a, -39761i, -1i, var_1.a.a), vec4<i32>(u_input.a.x, var_1.a.a, global4.a.a.a, var_1.a.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2147483647i, global1.a.a.a, -_wgslsmith_mod_i32(global1.a.a.a, firstTrailingBit(global1.c.x)), abs(_wgslsmith_clamp_i32(global4.c.x, u_input.a.x, -global1.a.a.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)));
}

