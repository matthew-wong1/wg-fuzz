struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(1i, -733i, -33328i), -28982i, vec2<u32>(34207u, 56942u));

var<private> global2: array<vec4<f32>, 10>;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<i32>) -> f32 {
    let var_0 = -(~(-(~vec4<i32>(u_input.d, arg_0, global1.a.x, 49114i))) >> ((vec4<u32>(~u_input.c.x, ~1851u, _wgslsmith_clamp_u32(4294967295u, global1.c.x, global1.c.x), 1u) << (_wgslsmith_clamp_vec4_u32(firstTrailingBit(u_input.c), select(u_input.c, u_input.c, vec4<bool>(arg_1.x, global3.x, true, false)), ~u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(max(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.c.x, global1.c.x), u_input.c.wyx), ~u_input.c.zwy)), vec3<u32>(~1u, ~_wgslsmith_mod_u32(_wgslsmith_div_u32(25337u, 1u), u_input.c.x), min(4294967295u, u_input.c.x))), 18u)];
    global2 = array<vec4<f32>, 10>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-177f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-471f)), _wgslsmith_f_op_f32(abs(-498f)))), !global3.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-297f, -357f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -815f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1710f - -1325f))))));
    var var_3 = Struct_1(_wgslsmith_div_vec3_i32(u_input.b.zwx, vec3<i32>(1i, i32(-1i) * -1i, max(var_0.x, arg_0))) ^ u_input.b.wwz, abs(-11391i), var_1.d.c);
    return _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(f32(-1f) * -419f));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, ~(~arg_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 1i, -72355i), vec3<i32>(14194i, u_input.b.x, u_input.d))) ^ u_input.b.wzz, ~(vec3<i32>(-12259i, _wgslsmith_mod_i32(arg_0.x, -19911i), _wgslsmith_mult_i32(arg_0.x, u_input.b.x)) | ((arg_0 ^ u_input.b.xyw) | _wgslsmith_div_vec3_i32(arg_0, vec3<i32>(global1.a.x, 35569i, u_input.a)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(487f - 871f), -686f), _wgslsmith_f_op_f32(max(597f, _wgslsmith_f_op_f32(f32(-1f) * -770f))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1228f, _wgslsmith_f_op_f32(min(613f, -197f)), true)))), 2136f, _wgslsmith_f_op_f32(func_3(-_wgslsmith_sub_i32(var_0.x, arg_0.x), select(vec2<bool>(false, global3.x), vec2<bool>(true, true), vec2<bool>(global3.x, false)), global1.a.yz)))));
    var var_2 = ~u_input.c.xy;
    let var_3 = true;
    return i32(-1i) * -var_0.x;
}

fn func_1() -> Struct_1 {
    let var_0 = 1u;
    let var_1 = !global3.x;
    var var_2 = _wgslsmith_dot_vec4_i32(-abs(~u_input.b), vec4<i32>(func_2(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(48418i, -4130i, -1i)), select(vec3<i32>(global1.a.x, -7066i, 0i), vec3<i32>(2147483647i, 0i, 0i), false))), -countOneBits(10737i), global1.b, 26569i));
    global3 = !select(select(select(vec2<bool>(true, false), vec2<bool>(global3.x, var_1), true), !vec2<bool>(global3.x, global3.x), false), select(!select(vec2<bool>(true, true), vec2<bool>(var_1, var_1), false), select(select(vec2<bool>(global3.x, global3.x), vec2<bool>(true, var_1), false), vec2<bool>(true, true), true), vec2<bool>(any(vec4<bool>(true, var_1, global3.x, false)), global3.x)), !(!select(vec2<bool>(true, var_1), vec2<bool>(true, global3.x), true)));
    let var_3 = Struct_1(-global1.a, -func_2(countOneBits(u_input.b.yyz) ^ global1.a), vec2<u32>(firstLeadingBit(~_wgslsmith_add_u32(u_input.c.x, u_input.c.x)), global1.c.x));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec4<i32>(-var_0.b, global1.b, -29428i, u_input.d);
    let var_2 = _wgslsmith_sub_i32(min(var_1.x ^ _wgslsmith_mult_i32(0i, ~2147483647i), var_0.a.x), _wgslsmith_dot_vec2_i32(var_0.a.yx, u_input.b.xz ^ u_input.b.yx));
    var var_3 = func_1();
    var_1 = (u_input.b >> (vec4<u32>(var_3.c.x, 1u, min(firstTrailingBit(var_3.c.x), global1.c.x), u_input.c.x) % vec4<u32>(32u))) ^ vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(u_input.b, -select(vec4<i32>(25251i, -2147483647i, var_0.a.x, var_1.x), vec4<i32>(global1.b, global1.b, 28897i, 26005i), global3.x)), 1i, ~(-var_1.x));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(trunc(2636f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -968f)));
    var var_5 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.x, var_3.c);
}

