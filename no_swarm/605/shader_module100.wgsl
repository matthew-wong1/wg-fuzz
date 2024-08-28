struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: array<Struct_3, 7>;

var<private> global2: array<Struct_1, 5>;

var<private> global3: Struct_4;

var<private> global4: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(0u, vec3<f32>(-232f, -1015f, 235f)), 0u, 687f, false, vec2<i32>(-61291i, i32(-2147483648))), Struct_2(Struct_1(0u, vec3<f32>(1150f, -1093f, -852f)), 4294967295u, 1740f, true, vec2<i32>(0i, -36998i)), Struct_2(Struct_1(1u, vec3<f32>(-141f, 449f, 1000f)), 1u, 783f, true, vec2<i32>(0i, 2147483647i)), Struct_2(Struct_1(4369u, vec3<f32>(-1010f, -934f, 569f)), 55923u, -683f, true, vec2<i32>(2147483647i, 244i)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1) -> f32 {
    global4 = array<Struct_2, 4>();
    let var_0 = vec3<f32>(global3.c.b.x, _wgslsmith_f_op_f32(395f * global3.c.b.x), _wgslsmith_f_op_f32(-1000f - global3.c.b.x));
    return arg_0.b.x;
}

fn func_3(arg_0: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(func_2(Struct_1(~(u_input.c.x << (_wgslsmith_clamp_u32(global3.c.a, 16590u, global3.c.a) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.c.b.x))), -1944f, 148f))));
    let var_1 = -1000f;
    var var_2 = _wgslsmith_mult_i32(u_input.b.x, abs(-max(_wgslsmith_div_i32(17775i, global3.a), global3.a)));
    global0 = array<Struct_2, 19>();
    var var_3 = ~10966u;
    return vec4<f32>(global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), -1405f, global3.c.b.x);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: f32) -> Struct_1 {
    global3 = Struct_4(-29117i, 712f, Struct_1(_wgslsmith_div_u32(~global3.c.a, max(global3.c.a | u_input.e.x, 19953u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) - 743f), _wgslsmith_f_op_f32(-369f - -235f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, -1309f))))));
    var var_0 = global3.c.b.yy;
    global0 = array<Struct_2, 19>();
    let var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -582f), _wgslsmith_f_op_f32(exp2(arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(u_input.a.x, 5u)])) - _wgslsmith_f_op_f32(abs(-1099f)))), 705f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-264f * var_0.x))), _wgslsmith_div_f32(-824f, _wgslsmith_f_op_f32(887f + 1000f)), 1025f, global3.b) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(11404u)) * _wgslsmith_div_vec4_f32(vec4<f32>(global3.c.b.x, global3.b, arg_1, arg_2), vec4<f32>(var_0.x, 1092f, arg_1, -1316f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1433f, -2142f, 1433f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, global3.c.b.x, -282f, -1790f), vec4<f32>(var_0.x, -317f, arg_2, 2845f))))))));
    var var_2 = Struct_4(0i, _wgslsmith_div_f32(1000f, var_1.x), global2[_wgslsmith_index_u32(1u, 5u)]);
    return Struct_1(max(global3.c.a, var_2.c.a), global3.c.b);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec4<u32> {
    global1 = array<Struct_3, 7>();
    let var_0 = global3.c;
    global2 = array<Struct_1, 5>();
    return _wgslsmith_mod_vec4_u32(u_input.a, ~(~(~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_4(func_1(true, _wgslsmith_f_op_f32(f32(-1f) * -1508f), -797f), any(vec4<bool>(true, true, true, true))) << (~firstLeadingBit(u_input.c) % vec4<u32>(32u));
    let var_1 = firstTrailingBit(max(~firstLeadingBit(~u_input.b), -u_input.b));
    let var_2 = u_input.c;
    global4 = array<Struct_2, 4>();
    var var_3 = _wgslsmith_div_i32((i32(-1i) * -17087i) >> (var_2.x % 32u), i32(-1i) * -2147483647i);
    var var_4 = Struct_1(3691u & var_0.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1166f), _wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(1569f * global3.c.b.x)) - vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(1530f, 1125f, true)), _wgslsmith_f_op_f32(exp2(global3.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(func_1(true, global3.c.b.x, -466f).b)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(global3.c.b, global3.c.b))))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.x);
}

