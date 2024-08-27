struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<u32, 15> = array<u32, 15>(4294967295u, 1u, 14230u, 9607u, 1u, 43969u, 1u, 85657u, 1u, 3406u, 1u, 38743u, 1u, 31584u, 1u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> vec2<bool> {
    global2 = array<u32, 15>();
    global1 = array<Struct_1, 22>();
    return vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -956f) * _wgslsmith_f_op_f32(-324f + _wgslsmith_f_op_f32(floor(-358f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1069f), _wgslsmith_f_op_f32(530f - -1000f))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: i32) -> vec3<f32> {
    var var_0 = ~max(max(vec3<u32>(36281u, 0u, reverseBits(4294967295u)), ~vec3<u32>(arg_1.x, arg_1.x, arg_1.x) | ~vec3<u32>(arg_1.x, 1u, 4294967295u)), firstLeadingBit(vec3<u32>(countOneBits(1u), arg_1.x >> (global2[_wgslsmith_index_u32(1u, 15u)] % 32u), 4294967295u)));
    global1 = array<Struct_1, 22>();
    var var_1 = ~max(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 3752i, 1i, u_input.a.x), vec4<i32>(u_input.a.x, arg_3, -57857i, u_input.b))), vec4<i32>(arg_3, -1i, u_input.b, -25043i));
    return arg_0.a.yyx;
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> vec3<i32> {
    let var_0 = vec4<u32>(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(1u, 15u)], 26279u), 15u)], global2[_wgslsmith_index_u32(firstTrailingBit(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)])) & 1u, 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~18541u, 15u)], 15u)], ~_wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7734u, 15u)], 15u)], 15u)]), 15u)], 15u)], ~(~2945u)));
    global0 = array<vec4<bool>, 31>();
    let var_1 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~(~(~var_0.x)) >> (~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, max(1u, 55907u)), 15u)] % 32u), 15u)], 15u)], 15u)];
    var var_2 = -vec4<i32>(37653i, ~u_input.b, 1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c, 82421i, u_input.a.x, 46011i)), vec4<i32>(u_input.a.x, 73297i, u_input.c, -72177i) << (var_0 % vec4<u32>(32u))) & _wgslsmith_div_i32(min(2147483647i, 0i), -17320i));
    var var_3 = _wgslsmith_add_i32(_wgslsmith_add_i32(-u_input.c, firstTrailingBit(firstLeadingBit(-var_2.x))), -4118i);
    return vec3<i32>(-countOneBits((-2147483647i & var_2.x) & ~0i), 1i, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(var_2.x, 23302i)), vec2<i32>(10693i, 19568i ^ _wgslsmith_mult_i32(var_2.x, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 15u)]), ~30805u, ~0u)), 31u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(0u, 15u)], 15u)]) & (1u | ~global2[_wgslsmith_index_u32(~43736u, 15u)]), 31u)], !global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7578u & _wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(0u, 15u)], 85765u), 15u)], 31u)]);
    global1 = array<Struct_1, 22>();
    var var_1 = reverseBits(func_3(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec4<f32>(-520f, 652f, 1229f, -713f)), countOneBits(select(vec2<u32>(global2[_wgslsmith_index_u32(50492u, 15u)], 49285u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12337u, 15u)], 15u)]), var_0.x)), func_1(), u_input.b)), var_0.x));
    let var_2 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 22u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-800f, -722f) - vec2<f32>(1f, 1f)), vec2<f32>(625f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(646f)), -120f))))));
    var var_4 = Struct_2(vec4<i32>(~(-2147483647i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1.x, var_2.c), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.c, var_1.x, -2147483647i), vec3<i32>(-15904i, 1i, var_2.c))), -var_1.x, _wgslsmith_add_i32(var_1.x ^ ~u_input.a.x, -1i), -25961i), -(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, var_1.x, u_input.c, 1i), vec4<i32>(-1i, var_1.x, var_1.x, 54511i))), abs(vec2<u32>(_wgslsmith_div_u32(~var_2.b, firstTrailingBit(global2[_wgslsmith_index_u32(var_2.b, 15u)])), 72435u)), select(var_0.x | true, !(_wgslsmith_f_op_f32(trunc(var_3.x)) != var_3.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-308f, var_3.x, var_3.x))))), var_4.a.yw, 35884i);
}

