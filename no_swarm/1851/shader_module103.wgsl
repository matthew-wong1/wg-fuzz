struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: vec2<f32> = vec2<f32>(576f, -1201f);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = 1u;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))), _wgslsmith_div_f32(-939f, _wgslsmith_f_op_f32(f32(-1f) * -249f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_f_op_f32(781f * global1.x)) * -290f) + _wgslsmith_f_op_f32(max(1636f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(global1.x)))))));
}

fn func_3() -> vec2<bool> {
    global0 = array<Struct_1, 20>();
    let var_0 = all(select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), any(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, true), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(1999f, 1463f, -2159f), false)) * vec3<f32>(global1.x, -764f, 1000f)))) + vec3<f32>(1735f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -390f), -425f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1300f, -867f, -1501f)) * _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(1074f, global1.x, global1.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -515f, -596f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1926f, global1.x, -1307f), vec3<f32>(global1.x, -577f, global1.x), vec3<bool>(var_0, false, true)))))));
    let var_2 = ~select(~(~(vec4<u32>(1u, 0u, u_input.c, u_input.b) << (vec4<u32>(u_input.b, u_input.a, 1u, u_input.c) % vec4<u32>(32u)))), ~(~firstTrailingBit(vec4<u32>(1u, u_input.a, u_input.c, 1u))), var_0);
    let var_3 = -49071i;
    return vec2<bool>(!(var_2.x > _wgslsmith_sub_u32(u_input.c, abs(var_2.x))), var_0);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> vec2<f32> {
    global1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(-655f - -481f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1522f, -1609f)))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, global1.x))));
    var var_0 = Struct_2(_wgslsmith_mult_vec2_u32(arg_1.b.xz & ~(vec2<u32>(arg_1.b.x, 9142u) ^ arg_1.b.yz), arg_0.b.zy));
    var var_1 = global0[_wgslsmith_index_u32(1u, 20u)];
    let var_2 = arg_1;
    var var_3 = 19098u;
    return vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-487f, _wgslsmith_div_f32(219f, arg_0.a), false)))), _wgslsmith_f_op_f32(1529f * arg_1.a))), _wgslsmith_f_op_f32(-468f + 1000f));
}

fn func_1() -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, global1.x))), false, _wgslsmith_add_vec3_i32(vec3<i32>(7031i, 1i, 0i), vec3<i32>(-44883i, 67108i, 33035i)), Struct_2(vec2<u32>(12633u, u_input.c))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-252f, global1.x)))));
    let var_0 = global0[_wgslsmith_index_u32(u_input.b << (~1u % 32u), 20u)];
    var var_1 = ~var_0.b.yy;
    var var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1144f * -524f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1151f)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(global0[_wgslsmith_index_u32(var_1.x >> (50397u % 32u), 20u)], Struct_1(global1.x, firstLeadingBit(max(var_0.b, vec3<u32>(4294967295u, 1859u, 10137u))), 1u), false & all(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), select(vec2<bool>(true, true), select(func_3(), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true), any(vec3<bool>(true, true, true))))));
    return var_0.b.x & min(~54235u, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(global1.x, -135f);
    let var_0 = select(-_wgslsmith_mult_i32(i32(-1i) * -23945i, 16004i), -86095i, any(vec2<bool>(all(vec2<bool>(true, true)), false)));
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>((7444u ^ func_1()) | _wgslsmith_sub_u32(~u_input.b, 16525u), max(_wgslsmith_div_u32(1u, 89047u), u_input.b), ~_wgslsmith_add_u32(_wgslsmith_add_u32(23047u, u_input.a), 1u), abs(reverseBits(u_input.b))), select(~(~(~vec4<u32>(0u, u_input.a, u_input.a, 0u))), ~(~(vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.a) << (vec4<u32>(1u, 1u, u_input.a, 3211u) % vec4<u32>(32u)))), vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), !(-8970i < var_0), !any(vec4<bool>(true, true, true, false)), true)));
    var_1 = vec4<u32>(u_input.c, ~u_input.c, ~(select(u_input.a, var_1.x, true) >> ((~u_input.a << (~u_input.a % 32u)) % 32u)), ~abs(firstLeadingBit(12327u)));
    var var_2 = ~_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(var_0, 2147483647i, var_0), vec3<i32>(0i, var_0, 2147483647i)), -(vec3<i32>(var_0, var_0, 4852i) >> (vec3<u32>(u_input.b, 54967u, u_input.a) % vec3<u32>(32u)))), vec3<i32>(1i, var_0, var_0 & var_0) ^ ~vec3<i32>(var_0, 1i, var_0));
    var var_3 = global0[_wgslsmith_index_u32(~reverseBits(u_input.b) << ((1u << (u_input.a % 32u)) % 32u), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(-578f, ~(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a, var_1.x, 38309u, var_3.c)), ~vec4<u32>(var_1.x, 43307u, 0u, u_input.a))), reverseBits(_wgslsmith_add_u32(var_3.b.x, var_3.c)));
}

