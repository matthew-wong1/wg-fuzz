struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(1u, vec3<i32>(-30854i, -1i, 0i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: f32) -> vec3<i32> {
    global1 = -max(0i, _wgslsmith_div_i32(arg_1.x, -(~1i)));
    var var_0 = -1000f;
    let var_1 = u_input.a;
    global0 = array<Struct_1, 24>();
    var var_2 = 0u;
    return arg_1;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(floor(-1135f));
    global1 = _wgslsmith_div_i32(~u_input.a, -39551i);
    global0 = array<Struct_1, 24>();
    let var_1 = global2.b;
    global2 = arg_2;
    return -(firstLeadingBit(func_3(true, vec3<i32>(28053i, var_1.x, -29962i), var_0) ^ (arg_3 | vec3<i32>(arg_2.b.x, u_input.a, global2.b.x))) ^ firstTrailingBit(firstTrailingBit(reverseBits(vec3<i32>(arg_3.x, u_input.b, var_1.x)))));
}

fn func_2() -> Struct_2 {
    global2 = Struct_1(_wgslsmith_sub_u32(1u, 0u), vec3<i32>(-global2.b.x, global2.b.x, global2.b.x));
    let var_0 = abs(countOneBits(abs(~1u) & ~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a, 25527u), vec2<u32>(0u, 16710u))));
    var var_1 = global0[_wgslsmith_index_u32(var_0, 24u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-558f * 1235f), _wgslsmith_f_op_f32(step(302f, 314f))))) + _wgslsmith_f_op_f32(-873f + _wgslsmith_f_op_f32(trunc(1548f)))) + 1176f);
    var var_3 = Struct_1(0u, func_4(true, -8469i, Struct_1(119606u, vec3<i32>(1i, -var_1.b.x, -18017i)), func_3(all(vec3<bool>(true, true, false)), vec3<i32>(var_1.b.x, -2147483647i, -u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))));
    return Struct_2(vec2<i32>(-19992i, -1i), Struct_1(_wgslsmith_mod_u32(global2.a, global2.a), -global2.b), Struct_1(var_0, vec3<i32>(u_input.b, func_4(true, ~21148i, Struct_1(1u, var_1.b), vec3<i32>(-10807i, var_3.b.x, var_1.b.x)).x, u_input.b)), global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: f32) -> vec2<u32> {
    let var_0 = 1u;
    var var_1 = Struct_3(-1i, any(!vec2<bool>(all(vec2<bool>(true, true)), true)), ~_wgslsmith_sub_i32(u_input.b, arg_0.b.b.x) >= abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(global2.b.x, 20435i), _wgslsmith_mult_vec2_i32(vec2<i32>(global2.b.x, -19587i), global2.b.zx))), ~(~arg_1));
    let var_2 = _wgslsmith_mult_vec4_u32(var_1.d, vec4<u32>((1u | _wgslsmith_dot_vec4_u32(arg_1, arg_1)) >> (~0u % 32u), (firstLeadingBit(var_1.d.x) >> (global2.a % 32u)) | min(_wgslsmith_mod_u32(global2.a, 59305u), _wgslsmith_div_u32(44856u, 16100u)), ~reverseBits(~0u), arg_1.x | ~_wgslsmith_div_u32(var_0, 11794u)));
    let var_3 = select(vec3<bool>(any(vec3<bool>(!var_1.c, true, false | var_1.b)), ~_wgslsmith_sub_i32(1i, 24694i) != global2.b.x, true), select(!select(vec3<bool>(true, var_1.c, true), vec3<bool>(true, var_1.b, var_1.b), select(vec3<bool>(var_1.c, var_1.b, true), vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(var_1.c, var_1.b, true))), !select(vec3<bool>(false, true, false), vec3<bool>(true, var_1.b, false), vec3<bool>(false, var_1.b, var_1.c)), vec3<bool>(var_1.b, true, true)), true);
    var var_4 = u_input.a;
    return max(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, var_2.x, 52177u), var_1.d.x), var_2.x ^ ~63949u), vec2<u32>(59180u, var_0), var_1.d.zw), ~var_2.zz);
}

fn func_1() -> Struct_3 {
    let var_0 = func_5(func_2(), _wgslsmith_add_vec4_u32(select(~vec4<u32>(3683u, 1u, 0u, 13270u), ~vec4<u32>(global2.a, 25132u, global2.a, 1423u), ~20190u < global2.a), vec4<u32>(2909u, reverseBits(4294967295u), 0u, firstLeadingBit(~global2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(314f)), _wgslsmith_f_op_f32(min(-502f, 290f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1403f))) + _wgslsmith_f_op_f32(step(617f, _wgslsmith_f_op_f32(1747f * 602f))))));
    let var_1 = global2.b.xy;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(-825f))) + -1043f);
    global2 = global0[_wgslsmith_index_u32(var_0.x, 24u)];
    let var_3 = Struct_2(abs(~(-global2.b.yy >> (var_0 % vec2<u32>(32u)))), global0[_wgslsmith_index_u32(var_0.x, 24u)], func_2().d, func_2().c, Struct_1(69535u | var_0.x, func_3(!(global2.b.x <= var_1.x), global2.b, var_2)));
    return Struct_3(2147483647i, !(true | any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))), any(vec3<bool>(any(vec4<bool>(false, false, false, true)), true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))))), max((vec4<u32>(global2.a, global2.a, 15006u, 1u) << (vec4<u32>(var_3.e.a, global2.a, 1u, global2.a) % vec4<u32>(32u))) << (firstLeadingBit(vec4<u32>(var_3.d.a, 0u, 1u, var_3.d.a)) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, global2.a, 1u, global2.a), vec4<u32>(var_3.b.a, global2.a, var_0.x, var_3.d.a))) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(27356u, 4294967295u, 1u, global2.a) | vec4<u32>(30447u, 0u, 0u, 0u), countOneBits(vec4<u32>(var_3.c.a, 4294967295u, var_3.c.a, 4294967295u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    var var_1 = func_1();
    let var_2 = func_1();
    var_0 = -853f;
    var var_3 = Struct_2(global2.b.zz, Struct_1(var_2.d.x, ~vec3<i32>(var_2.a | global2.b.x, firstLeadingBit(-2147483647i), select(u_input.a, var_1.a, true))), global0[_wgslsmith_index_u32(0u, 24u)], func_2().e, func_2().e);
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_i32(var_2.a, u_input.a), u_input.a), _wgslsmith_dot_vec3_u32(var_2.d.wzz, abs(vec3<u32>(var_1.d.x, global2.a, 16968u) & var_4.d.wyx) >> (func_1().d.zxz % vec3<u32>(32u))), global2.b.x, 891f, _wgslsmith_mult_vec2_i32(func_3(!(!var_1.b), vec3<i32>(reverseBits(var_4.a), -2147483647i, u_input.a & global2.b.x), _wgslsmith_f_op_f32(floor(1000f))).yz, reverseBits(global2.b.xz)));
}

