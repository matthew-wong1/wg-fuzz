struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(true, false));

var<private> global1: array<Struct_1, 1>;

var<private> global2: bool;

var<private> global3: array<Struct_4, 17>;

var<private> global4: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-1535f, 151f, 1125f, 590f), vec4<f32>(-444f, 1234f, 296f, 920f), vec4<f32>(-533f, 538f, 642f, 134f), vec4<f32>(1000f, -1713f, -1260f, 2093f), vec4<f32>(870f, 388f, 346f, 860f), vec4<f32>(-1000f, -207f, -533f, -181f), vec4<f32>(1165f, 129f, -120f, -1110f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(!any(vec2<bool>(true, true)), !all(vec4<bool>(true, global0.a.b, false, false))), Struct_1(!(!select(false, global0.a.a, global0.a.b)), true), u_input.d.x);
    var var_1 = var_0;
    global3 = array<Struct_4, 17>();
    var var_2 = var_0.a;
    var var_3 = Struct_2(Struct_1(select(var_1.a.b | true, var_1.c == -33756i, any(vec3<bool>(false, false, false))) || any(vec2<bool>(true, true)), any(vec2<bool>(false, var_1.b.a))), max(arg_0.wyw, vec3<u32>(~u_input.a, 1u, _wgslsmith_div_u32(4294967295u, 1u))));
    return global1[_wgslsmith_index_u32(arg_0.x, 1u)];
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> i32 {
    var var_0 = vec4<bool>(abs(_wgslsmith_clamp_i32(~(-2147483647i), firstLeadingBit(arg_1.c), countOneBits(u_input.c.x))) < u_input.b, true, false, !(!arg_1.a.a));
    var var_1 = ~abs(~(~vec3<u32>(u_input.a, 1u, 29118u)));
    let var_2 = arg_0.xzx;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_4 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 14830u), 1u)], _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, ~reverseBits(u_input.a), u_input.a), min(vec3<u32>(var_1.x, u_input.a, _wgslsmith_add_u32(var_1.x, 39291u)), ~(~vec3<u32>(90464u, 58339u, u_input.a)))));
    return _wgslsmith_mod_i32(-1i >> (u_input.a % 32u), _wgslsmith_mult_i32(78549i, arg_1.c) | ~u_input.b);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = vec3<i32>(15369i, u_input.c.x, reverseBits(func_3(global4[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(4294967295u, u_input.a)), 7u)], Struct_3(Struct_1(global0.a.b, global0.a.a), func_2(vec4<u32>(arg_1.b.x, arg_1.b.x, 10012u, arg_1.b.x)), ~(-2147483647i)))));
    global2 = any(vec3<bool>(global0.a.b, true, any(vec2<bool>(arg_1.a.b && arg_1.a.b, true && arg_1.a.a))));
    var var_1 = 15853u;
    var_1 = 48736u;
    let var_2 = true;
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<f32>, 7>();
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(1u, select(func_1(_wgslsmith_add_vec3_i32(u_input.c, u_input.d.ywx), Struct_2(global1[_wgslsmith_index_u32(4294967295u, 1u)], vec3<u32>(u_input.a, 1u, 0u))), 1u << (1u % 32u), max(2147483647i, u_input.b) <= select(u_input.c.x, u_input.d.x, true)), func_1(u_input.c, Struct_2(global1[_wgslsmith_index_u32(~u_input.a, 1u)], firstTrailingBit(vec3<u32>(4294967295u, 33658u, 0u))))), select(abs(reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(57783u, u_input.a, u_input.a)), select(select(!vec3<bool>(true, global0.a.b, false), select(vec3<bool>(global0.a.b, true, global0.a.a), vec3<bool>(false, true, global0.a.a), vec3<bool>(false, false, global0.a.b)), global0.a.a | global0.a.a), select(!vec3<bool>(global0.a.a, global0.a.a, true), !vec3<bool>(false, global0.a.b, global0.a.b), true), select(!vec3<bool>(true, global0.a.b, false), select(vec3<bool>(global0.a.b, global0.a.b, true), vec3<bool>(global0.a.a, global0.a.a, false), vec3<bool>(global0.a.a, global0.a.a, global0.a.a)), all(vec4<bool>(global0.a.b, false, global0.a.a, global0.a.a))))));
    global4 = array<vec4<f32>, 7>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-422f)))) - _wgslsmith_f_op_f32(694f + _wgslsmith_f_op_f32(select(-439f, 399f, global0.a.b)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-693f))))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1147f), 710f)));
    var var_2 = func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1451f)) * _wgslsmith_f_op_f32(1000f * -470f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2935f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -896f), _wgslsmith_f_op_f32(ceil(523f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -383f), _wgslsmith_div_f32(-382f, 1441f))))), Struct_3(global0.a, Struct_1(false, func_2(vec4<u32>(23132u, u_input.a, u_input.a, var_0.x) ^ vec4<u32>(var_0.x, u_input.a, 1u, u_input.a)).b), 49931i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-762f)), 1716f, !global0.a.a))), ~(~(reverseBits(vec4<u32>(var_0.x, var_0.x, u_input.a, 4294967295u)) >> (~vec4<u32>(u_input.a, 0u, 15748u, u_input.a) % vec4<u32>(32u)))));
}

