struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 1>;

var<private> global1: vec2<f32> = vec2<f32>(571f, -2341f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> vec3<u32> {
    global1 = vec2<f32>(583f, -940f);
    var var_0 = _wgslsmith_f_op_f32(217f + _wgslsmith_f_op_f32(floor(-502f)));
    let var_1 = -34504i;
    var var_2 = true;
    var var_3 = -1000f;
    return min(vec3<u32>(4294967295u, countOneBits(~select(0u, arg_0, arg_1.d)), arg_0), vec3<u32>(1u, arg_0, 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>) -> bool {
    let var_0 = !(all(!arg_1) == !(!(true || arg_1.x)));
    let var_1 = false;
    global0 = array<vec4<i32>, 1>();
    var var_2 = arg_1;
    var var_3 = Struct_1(abs(_wgslsmith_mult_i32(min(10393i, -51063i), abs(-30341i))), vec2<i32>(_wgslsmith_add_i32(-(i32(-1i) * -16996i), -_wgslsmith_mod_i32(0i, 11287i)), ~(~(-2147483647i))), true, var_2.x | false);
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<bool>(true, func_3(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 3783u, 92050u, u_input.a), ~vec4<u32>(u_input.b, 4294967295u, 4294967295u, 38432u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)) && func_3(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(u_input.a, u_input.b, 59942u, 41948u)), select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false), all(vec2<bool>(false, true)))), true);
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(-12543i << (func_1(u_input.b, Struct_1(5091i, vec2<i32>(-8621i, 1i), var_0.x, false), 1i).x % 32u), max(firstTrailingBit(-43088i), -2147483647i), -1i >> (((u_input.c << (61834u % 32u)) | _wgslsmith_mod_u32(u_input.a, 4294967295u)) % 32u), 2261i), -((vec4<i32>(-1i) * -global0[_wgslsmith_index_u32(u_input.c, 1u)]) & ~(global0[_wgslsmith_index_u32(u_input.a, 1u)] & global0[_wgslsmith_index_u32(u_input.a, 1u)])));
    var var_2 = Struct_1(abs(-2147483647i), _wgslsmith_add_vec2_i32(~_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(var_1.x, var_1.x)), vec2<i32>(var_1.x, var_1.x), _wgslsmith_sub_vec2_i32(var_1.wy, vec2<i32>(var_1.x, var_1.x))), vec2<i32>(_wgslsmith_add_i32(35625i, _wgslsmith_dot_vec3_i32(var_1.ywz, vec3<i32>(-28619i, var_1.x, var_1.x))), _wgslsmith_add_i32(-14055i, _wgslsmith_add_i32(var_1.x, 39098i)))), var_0.x, func_3(firstTrailingBit(vec4<u32>(select(u_input.b, u_input.c, true), _wgslsmith_dot_vec2_u32(vec2<u32>(42682u, 1u), vec2<u32>(u_input.a, 53093u)), firstTrailingBit(u_input.a), _wgslsmith_sub_u32(70511u, 12252u))), vec4<bool>(any(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), var_0.x)), false, (false | var_0.x) && true, false)));
    var_2 = Struct_1(var_2.b.x, _wgslsmith_mult_vec2_i32(~(min(var_2.b, vec2<i32>(-26254i, -40975i)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(77697u, u_input.a), vec2<u32>(0u, 0u), vec2<u32>(u_input.a, 31084u)) % vec2<u32>(32u))), var_1.xw), false, false);
    var var_3 = !any(var_0);
    return Struct_1(~_wgslsmith_mult_i32(-var_1.x, var_1.x), var_1.xx, true, select(true, true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -543f) * _wgslsmith_f_op_f32(-global1.x)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-613f, 170f)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(-26794i, _wgslsmith_sub_vec2_i32(abs(vec2<i32>(-1i, 66504i)) << (_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.a, 0u)), abs(vec2<u32>(16451u, 50003u))) % vec2<u32>(32u)), abs(vec2<i32>(_wgslsmith_mod_i32(arg_2, -41383i), ~arg_0))), !arg_3.c, false);
    var var_1 = arg_1;
    var_0 = Struct_1(~(-(~var_1.a)), vec2<i32>(~1i, ~_wgslsmith_mod_i32(arg_2, countOneBits(0i))), true, arg_1.d);
    let var_2 = Struct_1(0i, vec2<i32>(-80548i, _wgslsmith_add_i32(1i ^ reverseBits(var_1.a), -(~(-53252i)))), all(vec4<bool>(all(select(vec4<bool>(var_1.c, arg_3.c, true, var_1.c), vec4<bool>(arg_1.c, arg_1.c, false, arg_1.c), true)), arg_3.c, false, var_0.d)), !any(vec2<bool>(true, true)));
    var_1 = func_2();
    return vec4<u32>(1u, 4792u, 0u, _wgslsmith_mult_u32(~(~u_input.a | reverseBits(5494u)), _wgslsmith_mult_u32(~u_input.c, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = Struct_1(countOneBits(0i), firstTrailingBit(firstTrailingBit(~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 46973i), vec2<i32>(39035i, 38381i), vec2<i32>(2147483647i, 2147483647i)))), true, -(~(~3502i)) >= ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, -2147483647i), -2147483647i, ~0i));
    var_0 = var_1.b.x;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, global1.x), vec2<f32>(global1.x, 1000f), vec2<bool>(true, var_1.d))))))));
    global0 = array<vec4<i32>, 1>();
    let var_2 = func_4(var_1.a, var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(~var_1.b.x, 1162i, firstTrailingBit(0i)) >> (select(~vec3<u32>(55341u, 18540u, u_input.a), func_1(25155u, var_1, var_1.b.x), !var_1.d) % vec3<u32>(32u)), -abs(max(vec3<i32>(var_1.a, 0i, var_1.a), vec3<i32>(var_1.b.x, -48313i, var_1.b.x)))), func_2());
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-677f, global1.x, global1.x, global1.x) - vec4<f32>(global1.x, global1.x, global1.x, -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1103f, global1.x, 292f, -1000f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 1073f, global1.x, global1.x), vec4<f32>(global1.x, global1.x, -511f, -247f), true)))))));
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(259f, _wgslsmith_f_op_f32(global1.x - 770f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-413f, global1.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-716f)) * _wgslsmith_f_op_f32(min(global1.x, global1.x)))))));
    let var_4 = _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, _wgslsmith_div_i32(~var_1.a, 1i)) >> (_wgslsmith_sub_u32(~0u << (max(u_input.c, u_input.b) % 32u), ~0u & ~u_input.b) % 32u), -var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(1u, 1u)], ~firstTrailingBit(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(var_2.xwy, var_2.zwx), vec3<u32>(55983u, var_2.x, 68684u))));
}

