struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec2<u32>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global3: Struct_3 = Struct_3(Struct_2(vec3<i32>(-29880i, -1i, 0i), Struct_1(1i, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: vec2<f32>) -> u32 {
    var var_0 = ~global1.x;
    let var_1 = Struct_3(global3.a);
    var_0 = ~(~u_input.a);
    return _wgslsmith_mult_u32(u_input.a, 1840u);
}

fn func_3() -> u32 {
    var var_0 = vec3<bool>(false, true, !(reverseBits(-global3.a.a.x) >= -4583i));
    var var_1 = global3.a.b;
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1615f, 1923f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(234f * _wgslsmith_f_op_f32(max(146f, -1158f)))))), vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(500f, 2571f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -986f)) * 1380f)));
    global3 = Struct_3(Struct_2(~min(global3.a.a, vec3<i32>(global3.a.a.x, var_1.a, -28866i)), global3.a.b));
    var var_3 = global3.a.b.b && true;
    return select(~(~(4081u >> (~global1.x % 32u))), _wgslsmith_add_u32(~(7629u >> (1u % 32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 1u, global1.x), vec3<u32>(19587u, 4294967295u, global1.x) << (vec3<u32>(global1.x, 11263u, 66056u) % vec3<u32>(32u))), ~4294967295u)), var_0.x);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> vec2<u32> {
    global1 = ~(vec2<u32>(~func_2(1739f, arg_1.x, global3.a.b.b, arg_1), func_3()) << (~select(vec2<u32>(97860u, 4294967295u), vec2<u32>(2932u, 0u) >> (vec2<u32>(u_input.a, 45811u) % vec2<u32>(32u)), vec2<bool>(true, true)) % vec2<u32>(32u)));
    global0 = reverseBits(~vec3<i32>(countOneBits(~(-25287i)), ~(~(-2147483647i)), arg_0.a.x));
    let var_0 = !(_wgslsmith_f_op_f32(abs(-397f)) > arg_1.x);
    var var_1 = vec2<bool>(!(!global3.a.b.b), true);
    let var_2 = Struct_3(Struct_2(_wgslsmith_mult_vec3_i32(max(arg_0.a, arg_0.a), _wgslsmith_div_vec3_i32(global3.a.a, global3.a.a)) << (vec3<u32>(abs(4474u), min(4294967295u, u_input.a), u_input.a) % vec3<u32>(32u)), Struct_1(_wgslsmith_div_i32(-1i, arg_0.b.a), var_0)));
    return vec2<u32>(~global1.x, _wgslsmith_add_u32(global1.x, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~vec2<u32>(u_input.a, ~global1.x);
    global1 = firstLeadingBit(abs(func_1(global3.a, vec2<f32>(1000f, -1317f)))) << (~vec2<u32>(~4294967295u, abs(global1.x)) % vec2<u32>(32u));
    global3 = Struct_3(Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(global3.a.a.x), global0.x, -7133i), vec3<i32>(global0.x << (u_input.a % 32u), -global0.x, 1i)), Struct_1(_wgslsmith_add_i32(countOneBits(-2147483647i), global0.x), all(vec4<bool>(global3.a.b.b, false, false, global2.x)) && !global2.x)));
    var var_0 = firstLeadingBit(global3.a.a.yx);
    let var_1 = vec3<u32>(~firstLeadingBit(global1.x & u_input.a), global1.x, ~firstLeadingBit(u_input.a)) | (abs(vec3<u32>(global1.x, u_input.a, 63501u) | vec3<u32>(global1.x, 1u, u_input.a)) ^ (~(~vec3<u32>(u_input.a, 0u, 1u)) << (_wgslsmith_clamp_vec3_u32(select(vec3<u32>(global1.x, 17972u, u_input.a), vec3<u32>(u_input.a, global1.x, 0u), global2.x), _wgslsmith_add_vec3_u32(vec3<u32>(21856u, 1u, 2259u), vec3<u32>(41568u, global1.x, 42295u)), vec3<u32>(4294967295u, global1.x, 14979u) >> (vec3<u32>(u_input.a, 4294967295u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(~min(global1.x, 6725u), var_1.x), ~_wgslsmith_clamp_u32(1u, func_2(444f, -1234f, false, vec2<f32>(929f, -1033f)), _wgslsmith_div_u32(var_1.x, var_1.x)), 1u, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1026f));
}

