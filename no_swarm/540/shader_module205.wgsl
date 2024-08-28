struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<i32, 5>;

var<private> global2: vec4<bool>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<i32>, arg_3: vec3<u32>) -> u32 {
    var var_0 = Struct_1(vec4<bool>(false, true, false, global2.x && global2.x), countOneBits(vec2<i32>((i32(-1i) * -3161i) & (-85782i << (arg_3.x % 32u)), u_input.b)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(446f)), -330f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 352f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1506f, 429f)), _wgslsmith_div_vec3_f32(vec3<f32>(281f, arg_0, -2177f), vec3<f32>(-1625f, arg_0, -618f)), global2.yxx)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -897f, 1000f), vec3<f32>(-1171f, 1612f, -1723f), vec3<bool>(global2.x, global2.x, false))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, -218f, arg_0))))))), all(select(!global2.wxx, global2.wzz, global2.zxw)))), any(vec2<bool>(true, all(select(vec4<bool>(true, global2.x, true, false), vec4<bool>(global2.x, false, false, false), vec4<bool>(true, global2.x, global2.x, global2.x))))), u_input.a.x);
    var var_1 = !(!select(vec2<bool>(true, true), global2.yy, _wgslsmith_clamp_i32(59598i, var_0.b.x, -15583i) == arg_2.x));
    global2 = !(!vec4<bool>(any(var_0.a.xw), var_1.x, all(select(vec4<bool>(true, false, var_1.x, true), var_0.a, false)), any(!vec2<bool>(var_1.x, false))));
    var var_2 = Struct_1(!select(vec4<bool>(true, var_1.x, true && global2.x, false), vec4<bool>(var_1.x, global2.x, any(vec3<bool>(true, true, true)), global2.x == false), true), var_0.b, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -223f), _wgslsmith_f_op_f32(1007f - 1284f))), -315f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) + _wgslsmith_f_op_f32(f32(-1f) * -1446f))), any(select(vec4<bool>(any(vec2<bool>(true, false)), false, true, true), vec4<bool>(true, !var_0.d, all(global2.yy), var_0.a.x), vec4<bool>(select(var_1.x, true, false), global2.x, all(global2.xwz), var_0.e >= 4294967295u))), arg_3.x);
    var var_3 = var_2.e;
    return ~(~0u);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: f32) -> i32 {
    var var_0 = ~2147483647i;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~(~countOneBits(u_input.a))), u_input.a), 26u)];
    var var_2 = global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -603f), -2147483647i, var_1.b, firstTrailingBit(~firstTrailingBit(vec3<u32>(var_1.e, 1u, 0u)) | abs(vec3<u32>(1u, var_1.e, 61689u)))), 26u)];
    let var_3 = vec3<u32>(abs(49126u) & abs(select(_wgslsmith_add_u32(var_2.e, 4294967295u), var_1.e, true)), 4294967295u, countOneBits(0u));
    let var_4 = -countOneBits(vec4<i32>(-20065i, var_1.b.x, var_2.b.x, arg_1) << (vec4<u32>(u_input.a.x, var_1.e, 10182u, 120947u) % vec4<u32>(32u))) & vec4<i32>(select(-2147483647i, reverseBits(-74952i), all(vec4<bool>(var_2.d, var_2.d, false, global2.x))) >> (~_wgslsmith_dot_vec2_u32(var_3.zy, u_input.a) % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.b.x, -1i, arg_1) ^ -vec3<i32>(29075i, 0i, global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), -vec3<i32>(2147483647i, var_1.b.x, -1i)), -(~firstLeadingBit(arg_1)), -max(-1i, 18294i));
    return reverseBits(-2147483647i);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<i32> {
    global2 = !vec4<bool>(false, any(!arg_1.a.zzw), true, true & global2.x);
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 26u)];
    global1 = array<i32, 5>();
    global1 = array<i32, 5>();
    var var_1 = false & global2.x;
    return ~(~vec2<i32>(-arg_1.b.x, abs(func_2(global2.yy, arg_1.b.x, -1367f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1053f, -794f, 1296f, 378f), vec4<f32>(552f, -588f, 598f, 1665f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-551f, 293f, -916f, -302f) + vec4<f32>(912f, -178f, 1555f, -165f)), !vec4<bool>(global2.x, global2.x, global2.x, true))))), vec4<f32>(-2715f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-749f - 159f), _wgslsmith_f_op_f32(min(-772f, 2101f)))))), 1000f, _wgslsmith_f_op_f32(-1086f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-251f * -165f), -711f, !global2.x)))));
    global2 = select(!(!(!vec4<bool>(true, global2.x, false, false))), !(!select(!vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(global2.x, global2.x, global2.x, global2.x), !global2.x)), false);
    let var_1 = global0[_wgslsmith_index_u32(0u, 26u)];
    global1 = array<i32, 5>();
    var var_2 = ~_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.b, 0i), var_1.b, false), func_1(_wgslsmith_f_op_vec4_f32(var_0 + var_0), Struct_1(vec4<bool>(var_1.d, global2.x, var_1.a.x, false), vec2<i32>(global1[_wgslsmith_index_u32(var_1.e, 5u)], var_1.b.x), vec3<f32>(-933f, 998f, var_0.x), global2.x, 4294967295u)), abs(vec2<i32>(global1[_wgslsmith_index_u32(1u, 5u)], u_input.b))), vec2<i32>(u_input.b >> ((var_1.e & 7281u) % 32u), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, 936f, 832f, 406f)), global0[_wgslsmith_index_u32(49355u & u_input.a.x, 26u)]).x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.b, firstLeadingBit(vec2<i32>(-1034i, 5761i))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1.b.x, -1i), countOneBits(24856i))) & var_1.b, ~4294967295u, abs(max(vec3<u32>(_wgslsmith_div_u32(4294967295u, var_1.e), var_1.e, var_1.e ^ 0u), vec3<u32>(_wgslsmith_sub_u32(85280u, var_1.e), u_input.a.x >> (var_1.e % 32u), 20799u))), ~abs(vec4<u32>(var_1.e, 0u, firstLeadingBit(0u), 4294967295u)));
}

