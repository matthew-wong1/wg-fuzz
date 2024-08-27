struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(5345i, 0i, 24669i), 1i);

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 17>;

var<private> global4: u32 = 15284u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> f32 {
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    var var_0 = global3[_wgslsmith_index_u32(4294967295u, 17u)];
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f + -1380f), 1051f));
    global0 = array<u32, 22>();
    return _wgslsmith_f_op_f32(f32(-1f) * -526f);
}

fn func_2() -> vec2<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3()), 580f);
    var var_1 = 4294967295u;
    var var_2 = Struct_1(_wgslsmith_add_vec3_i32(~(global1.a >> (~vec3<u32>(18107u, u_input.a.x, 56636u) % vec3<u32>(32u))), select(global2.a, global2.a, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true)))), (14138i | (global1.b | (-1i << (global0[_wgslsmith_index_u32(24314u, 22u)] % 32u)))) >> (1u % 32u));
    var var_3 = Struct_1(global1.a, -6068i);
    var var_4 = firstTrailingBit(select(vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.b.x, 22u)] | 8427u, u_input.a.x, _wgslsmith_div_u32(u_input.e.x, 0u)), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 4294967295u, global0[_wgslsmith_index_u32(26710u, 22u)]), !(var_2.b <= 5346i))) & abs(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 1u, 32856u) & vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(45977u, 22u)], 23836u), countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 92326u, u_input.b.x, 0u)), vec4<u32>(19138u, global0[_wgslsmith_index_u32(54626u, 22u)], u_input.e.x, 20179u) >> (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59790u, 22u)], 22u)], global0[_wgslsmith_index_u32(32822u, 22u)], 48754u, 33397u) % vec4<u32>(32u)))));
    return !select(select(vec2<bool>(all(vec4<bool>(false, false, false, false)), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), all(vec4<bool>(false, true, true, false))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global1 = Struct_1(global1.a, _wgslsmith_clamp_i32(28595i, ~(~global1.a.x), reverseBits(global1.a.x)));
    var var_0 = vec3<bool>(all(!func_2()) & false, true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1502f))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-949f, -242f, true))))));
    let var_1 = global3[_wgslsmith_index_u32(firstLeadingBit(32797u), 17u)];
    var var_2 = ~vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(70409u, 22u)] ^ 22406u, 3390u, 0u);
    var var_3 = vec2<bool>(false, !(!((global1.b & 20895i) < 1i)));
    return global3[_wgslsmith_index_u32(43640u, 17u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + -950f) - -276f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)));
    var var_1 = vec2<u32>(u_input.a.x, firstLeadingBit(~23476u));
    var var_2 = _wgslsmith_f_op_vec2_f32(arg_2.yw - arg_2.zx);
    let var_3 = var_0;
    var var_4 = firstLeadingBit(21945u);
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3, -934f))) + -122f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(267f, var_3), _wgslsmith_f_op_vec2_f32(sign(arg_2.yz))))), arg_2.wy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b;
    var var_1 = _wgslsmith_div_vec2_i32(~vec2<i32>(global2.b, i32(-1i) * -2147483647i), _wgslsmith_sub_vec2_i32(u_input.c, reverseBits(_wgslsmith_mod_vec2_i32(max(vec2<i32>(global2.a.x, 1i), global2.a.yz), vec2<i32>(25841i, u_input.d)))));
    var var_2 = vec4<bool>(false, false, any(vec3<bool>(true, false, true)), true);
    var var_3 = ~(~(~u_input.e.x));
    global0 = array<u32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(func_1(min(4294967295u, global0[_wgslsmith_index_u32(21562u, 22u)])), Struct_1(min(vec3<i32>(global1.b, u_input.d, global1.a.x), vec3<i32>(var_1.x, u_input.d, -7813i)), u_input.c.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-318f, -290f, -1435f, -754f) + vec4<f32>(-1292f, -1000f, 1183f, 105f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-745f, 1066f, 262f, -749f))), !var_2.x)), func_1(1u))), vec2<f32>(1f, 1f), any(vec3<bool>(!var_2.x, true, !var_2.x)))), _wgslsmith_mod_vec2_i32(global2.a.xx, ~global1.a.yy), ~max(1u, _wgslsmith_mult_u32(u_input.b.x, u_input.a.x) ^ (u_input.a.x | global0[_wgslsmith_index_u32(0u, 22u)])), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1456f)))), _wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(449f, -311f) * 328f) * -905f)), 5592u);
}

