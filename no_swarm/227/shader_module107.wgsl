struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<i32, 4> = array<i32, 4>(-40535i, -20744i, 73482i, i32(-2147483648));

var<private> global2: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> vec2<u32> {
    var var_0 = global0[_wgslsmith_index_u32(10182u, 15u)];
    global1 = array<i32, 4>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 54396u), vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(17973u, 25523u, 41290u), ~vec3<u32>(9282u, 30504u, 25526u)), 1u)), 15u)];
    var var_2 = _wgslsmith_f_op_f32(floor(566f));
    global1 = array<i32, 4>();
    return vec2<u32>(1u, 4294967295u) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u >> (1u % 32u), 36220u), _wgslsmith_div_vec2_u32(vec2<u32>(36749u, 19202u), vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~firstTrailingBit(vec2<u32>(79167u, 1u)), max(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 29286u)))) % vec2<u32>(32u));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_1 {
    global1 = array<i32, 4>();
    var var_0 = global2.a;
    global0 = array<Struct_1, 15>();
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(select(arg_0, 1000f, false)), _wgslsmith_f_op_f32(max(arg_0, arg_0)))))))));
    var var_2 = global0[_wgslsmith_index_u32(0u | _wgslsmith_dot_vec2_u32(vec2<u32>(105729u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_3.x, 4294967295u, 58112u), vec4<u32>(5269u, 12650u, arg_3.x, 68802u))) >> (arg_3 % vec2<u32>(32u)), (abs(arg_3) << (max(vec2<u32>(83441u, 0u), arg_3) % vec2<u32>(32u))) << (vec2<u32>(~arg_3.x, 17397u >> (arg_3.x % 32u)) % vec2<u32>(32u))), 15u)];
    return arg_1;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-745f * 218f), _wgslsmith_f_op_f32(-1840f + -612f))))), Struct_1(~(i32(-1i) * -1i) & global2.a), -vec4<i32>(-1i, 2147483647i, -37167i, _wgslsmith_add_i32(global2.a, 1i)), func_2());
    let var_1 = false;
    let var_2 = !vec3<bool>(var_1, true, any(vec4<bool>(false, true, !var_1, all(vec3<bool>(var_1, var_1, true)))));
    global1 = array<i32, 4>();
    var var_3 = Struct_1(firstTrailingBit(-(~(-u_input.a))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1264f)))), -1123f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec4<bool>(!any(vec4<bool>(true, true, true, false)), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(trunc(-793f)) >= _wgslsmith_f_op_f32(abs(762f)), false));
    global1 = array<i32, 4>();
    var var_1 = -2147483647i;
    let var_2 = 1u;
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1248f)) - -1983f), _wgslsmith_f_op_f32(f32(-1f) * -2193f), _wgslsmith_f_op_f32(func_1(Struct_1(-3267i))))))));
    var var_4 = Struct_1(_wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(global2.a, 52306i, global2.a, global2.a) << (vec4<u32>(var_2, var_2, 1u, 1u) % vec4<u32>(32u)), vec4<i32>(global1[_wgslsmith_index_u32(var_2, 4u)], global2.a, global2.a, 33679i) & vec4<i32>(global1[_wgslsmith_index_u32(92604u, 4u)], 7517i, -7864i, -46512i)), reverseBits(min(reverseBits(vec4<i32>(1i, -1i, global2.a, global1[_wgslsmith_index_u32(4294967295u, 4u)])), reverseBits(vec4<i32>(u_input.a, 2147483647i, u_input.a, -2147483647i))))));
    var_4 = Struct_1(_wgslsmith_add_i32(min(-65327i, 32118i), min(global1[_wgslsmith_index_u32(~var_2, 4u)], ~(~var_4.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec2<u32>(~var_2, _wgslsmith_mod_u32(var_2, var_2)), abs(select(vec2<u32>(var_2, var_2), vec2<u32>(0u, 4294967295u), var_0.x))), min(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, -2147483647i) | (u_input.a << (var_2 % 32u)), ~1i), 0i), ~_wgslsmith_mod_vec3_u32(~select(vec3<u32>(var_2, 99713u, var_2), vec3<u32>(var_2, var_2, 58026u), var_0.x), ~(vec3<u32>(29288u, var_2, 40578u) | vec3<u32>(var_2, var_2, var_2))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_2, 7949u, 39515u) ^ _wgslsmith_mod_u32(max(var_2, var_2), 22966u << (1u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2 >> (85771u % 32u), var_2, 19665u), _wgslsmith_add_vec3_u32(vec3<u32>(var_2, 1u, 6746u) << (vec3<u32>(51740u, 72613u, 25278u) % vec3<u32>(32u)), abs(vec3<u32>(46653u, var_2, var_2))))), _wgslsmith_sub_vec3_u32(select(vec3<u32>(1u, 22104u, _wgslsmith_sub_u32(var_2, 4294967295u)), vec3<u32>(firstLeadingBit(0u), var_2, var_2 >> (10743u % 32u)), true == (24510i < global2.a)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 56114u, var_2), vec3<u32>(65227u, 39184u, 0u) ^ vec3<u32>(var_2, var_2, var_2))));
}

