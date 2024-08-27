struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(~(~(~u_input.a)), vec3<u32>(abs(~u_input.a.x), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 6246u)), ~u_input.b), ~(4294967295u ^ u_input.a.x)), vec3<u32>(select(~1u, 27791u, true), u_input.b.x >> (~0u % 32u), ~40050u & u_input.a.x)));
    let var_1 = Struct_1(~vec3<u32>(var_0.a.x, 8746u, 37022u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(557f, -339f, -1978f), vec3<f32>(-842f, 369f, -205f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-604f, -1293f, 914f), vec3<f32>(1323f, 116f, 1013f))))))))));
    var var_3 = var_1;
    var_3 = var_1;
    return vec2<bool>(any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), all(vec4<bool>(false, true, false, true)))), any(select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))))));
}

fn func_2() -> vec2<bool> {
    var var_0 = ~u_input.b.x;
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, min(4294967295u, u_input.a.x), max(0u, u_input.b.x)), abs(~u_input.a.x), firstLeadingBit(1u)), 60636u, ~(~u_input.a.x)));
    var_0 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(min(0u, 26020u), select(1u, u_input.a.x, all(vec2<bool>(true, true)))) & abs(reverseBits(73195u)), ~(~u_input.b.x));
    global0 = array<i32, 15>();
    var var_2 = -min(max(~(-vec2<i32>(44996i, -37175i)), -vec2<i32>(global0[_wgslsmith_index_u32(var_1.a.x, 15u)], 17161i) & vec2<i32>(u_input.c, u_input.c)), countOneBits(abs(min(vec2<i32>(-19543i, 0i), vec2<i32>(-5293i, 0i)))));
    return !select(vec2<bool>(any(func_3()), any(vec3<bool>(true, false, true))), !vec2<bool>(all(vec2<bool>(true, false)), true), -u_input.c == global0[_wgslsmith_index_u32(u_input.a.x, 15u)]);
}

fn func_1() -> u32 {
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    let var_0 = select(vec2<bool>(true, true), !select(func_2(), vec2<bool>(all(vec4<bool>(true, true, false, false)), true), vec2<bool>(true, true)), !(!vec2<bool>(u_input.b.x < u_input.a.x, true)));
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec2_i32(abs(~vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(4294967295u, 15u)])), firstTrailingBit(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 15u)]) & vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], -1i))) >> ((_wgslsmith_add_u32(34511u, 8974u) & ~u_input.a.x) % 32u));
    let var_2 = Struct_1(~u_input.a);
    return ~var_2.a.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_1 {
    global0 = array<i32, 15>();
    var var_0 = Struct_1(abs(vec3<u32>(reverseBits(~4294967295u), 22255u, 0u)));
    let var_1 = 32409u;
    var var_2 = true;
    var_2 = arg_1.x;
    return Struct_1(var_0.a);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = array<i32, 15>();
    let var_0 = vec2<u32>(~u_input.b.x, 49779u) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + arg_0)));
    var var_2 = func_4(vec3<u32>(75568u, arg_2.a.x, _wgslsmith_div_u32(func_4(u_input.a >> (vec3<u32>(arg_2.a.x, 61627u, 4294967295u) % vec3<u32>(32u)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))).a.x, min(~4294967295u, firstLeadingBit(u_input.b.x)))), select(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))), !vec4<bool>(any(vec2<bool>(true, true)), true, any(vec3<bool>(true, true, false)), true), true));
    let var_3 = arg_2;
    return var_2.a.x & 90393u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(1615f, func_4(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(88424u, u_input.b.x), func_1()), ~0u, 42970u), select(vec4<bool>(all(vec3<bool>(true, false, false)), u_input.b.x > 0u, func_2().x, true), vec4<bool>(true, true, true, true), true)), func_4(~(u_input.a & u_input.a), vec4<bool>(true, true, false, !(u_input.a.x == u_input.a.x))));
    var var_1 = vec2<bool>(false, false);
    let var_2 = false;
    var var_3 = vec2<u32>(u_input.b.x, u_input.b.x);
    var var_4 = func_4(u_input.a << (~(~vec3<u32>(0u, var_3.x, u_input.b.x)) % vec3<u32>(32u)), !(!(!(!vec4<bool>(true, var_2, false, var_2)))));
    var_4 = Struct_1(func_4(~(~vec3<u32>(var_4.a.x, var_3.x, u_input.a.x)), !(!(!vec4<bool>(var_1.x, true, true, true)))).a);
    var_0 = 0u;
    var var_5 = func_4(vec3<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(var_3.x, 0u), vec2<u32>(u_input.b.x, u_input.b.x), !vec2<bool>(var_2, true)), abs(~var_4.a.xy)), 58313u, 4294967295u), select(!vec4<bool>(var_1.x, true, !var_2, any(vec2<bool>(var_2, var_1.x))), vec4<bool>(false, !any(vec4<bool>(false, true, var_2, var_2)), true, 11984i != global0[_wgslsmith_index_u32(u_input.b.x & 1u, 15u)]), vec4<bool>(false, false, var_1.x && any(vec2<bool>(var_1.x, var_2)), !var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_4.a.x, _wgslsmith_mult_u32(0u, 1u), var_5.a.x, 0u), firstLeadingBit(vec4<u32>(39784u, 0u, var_5.a.x, var_5.a.x)) << (vec4<u32>(var_5.a.x, 19863u, 15125u, var_4.a.x) % vec4<u32>(32u))), vec4<u32>(min(_wgslsmith_add_u32(var_3.x, u_input.b.x), var_3.x), ~_wgslsmith_sub_u32(u_input.a.x, u_input.b.x), ~1u, 4294967295u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1031f, 399f, 737f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-790f, -1136f, -487f) + vec3<f32>(268f, -1427f, -1043f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -192f, -1001f), vec3<f32>(-628f, -140f, 357f), var_1.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(900f, _wgslsmith_f_op_f32(trunc(621f)), _wgslsmith_f_op_f32(-390f + 370f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-499f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(527f, -624f)), _wgslsmith_f_op_f32(f32(-1f) * -1909f), var_2)), _wgslsmith_f_op_f32(abs(-576f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -714f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1635f - -1133f), _wgslsmith_f_op_f32(round(-1789f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -264f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -415f) - 360f)))), ~(~vec4<u32>(~4294967295u, var_5.a.x << (4294967295u % 32u), abs(2847u), _wgslsmith_add_u32(var_4.a.x, var_3.x))));
}

