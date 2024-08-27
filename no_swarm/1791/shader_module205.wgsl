struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: i32;

var<private> global2: f32 = -849f;

var<private> global3: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_u32(68755u, _wgslsmith_dot_vec2_u32(vec2<u32>(select(49624u, u_input.b.x, false), ~0u), _wgslsmith_mod_vec2_u32(~u_input.b, u_input.a.zw))), select(vec3<i32>(-1i, -_wgslsmith_mult_i32(-1i, -1i), countOneBits(0i)), select(-vec3<i32>(15449i, 39786i, -52996i), ~vec3<i32>(-17799i, 0i, -35602i), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))) | vec3<i32>(1i, i32(-1i) * -61524i, _wgslsmith_mult_i32(-22639i, 4434i)), any(vec4<bool>(false, false, false, false)) | !any(vec3<bool>(false, true, true))));
    var var_1 = Struct_1(~u_input.b.x, var_0.b | vec3<i32>(var_0.b.x, var_0.b.x >> ((69186u << (u_input.a.x % 32u)) % 32u), var_0.b.x));
    global1 = 1i;
    let var_2 = Struct_1(~u_input.b.x, ~_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.b, var_0.b) | vec3<i32>(var_0.b.x, -2147483647i, 2147483647i), _wgslsmith_div_vec3_i32(select(var_1.b, vec3<i32>(-1i, 0i, var_0.b.x), vec3<bool>(true, false, false)), vec3<i32>(-2147483647i, -1159i, var_1.b.x))));
    var var_3 = abs(vec3<i32>(var_2.b.x, min(var_1.b.x & firstTrailingBit(var_0.b.x), var_1.b.x | firstTrailingBit(var_1.b.x)), select(1i, _wgslsmith_div_i32(var_2.b.x, -1i), true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2258f, _wgslsmith_f_op_f32(480f + -780f)) * 1000f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = -7226i;
    let var_1 = -1i;
    let var_2 = _wgslsmith_f_op_f32(-1962f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_div_f32(arg_0.x, arg_0.x)))))));
    global3 = _wgslsmith_f_op_f32(func_3());
    global2 = _wgslsmith_f_op_f32(2435f * var_2);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    let var_0 = u_input.c.yy;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(-457f, arg_1.x), true, global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 29u)])), -1000f)));
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(1138f * _wgslsmith_f_op_f32(func_3())))));
    let var_2 = -(firstTrailingBit(-arg_0.b.x | _wgslsmith_dot_vec2_i32(arg_0.b.yy, arg_0.b.zx)) & firstTrailingBit(-arg_0.b.x));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return abs(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(1u, 35840u & ~u_input.b.x), func_1(Struct_1(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), -(vec3<i32>(-1i, -2147483647i, 0i) << (vec3<u32>(1u, u_input.b.x, 39542u) % vec3<u32>(32u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1384f, 242f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-908f, -147f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(590f, 952f)) * _wgslsmith_div_vec2_f32(vec2<f32>(592f, 218f), vec2<f32>(1564f, 1738f))))), true), 29u)];
    var var_1 = u_input.b.x;
    let var_2 = ~var_0.b;
    var var_3 = Struct_1(min(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 12405u, u_input.b.x, 1u), u_input.a >> (u_input.a % vec4<u32>(32u))), 36320u), select(abs(firstLeadingBit(countOneBits(var_2))), ~_wgslsmith_clamp_vec3_i32(var_2, var_2, var_0.b) & vec3<i32>(firstTrailingBit(-22417i), -var_2.x, 2033i), any(vec3<bool>(false, true, false)) & (_wgslsmith_f_op_f32(trunc(934f)) <= _wgslsmith_f_op_f32(f32(-1f) * -155f))));
    var var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a) ^ vec4<u32>(var_3.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a, 30400u), u_input.a.zz), ~u_input.b.x, min(~45150u, 25688u & var_0.a)), u_input.c.x, var_3.b.zx, var_0.b.x | ~1i);
}

