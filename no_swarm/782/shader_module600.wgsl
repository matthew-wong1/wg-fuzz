struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
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

var<private> global0: array<Struct_2, 31>;

var<private> global1: array<vec4<bool>, 28>;

var<private> global2: vec4<u32> = vec4<u32>(1u, 24361u, 0u, 4294967295u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = firstTrailingBit(0i);
    global1 = array<vec4<bool>, 28>();
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.a.x, global2.x), ~global2.wy >> (~firstLeadingBit(global2.wx) % vec2<u32>(32u)));
    var var_2 = Struct_2(arg_3, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(584f, arg_3.b.x)), arg_3.b.x)));
    var var_3 = firstTrailingBit(var_2.a.a >> (vec3<u32>(global2.x, _wgslsmith_div_u32(var_1.x, arg_3.a.x) << (global2.x % 32u), 34563u) % vec3<u32>(32u)));
    return u_input.b.x;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(select(-494f, 1582f, !all(vec2<bool>(true, true))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2194f));
    let var_1 = Struct_1(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b.x, global2.x, u_input.b.x) << (_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(global2.yww, u_input.b), vec3<u32>(1u, global2.x, 1u) | global2.wwx) % vec3<u32>(32u)), global2.zzy), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2154f, -1362f, -2208f, -238f) * vec4<f32>(910f, 217f, -1199f, -804f)) - vec4<f32>(792f, 1000f, -1298f, 1363f))))), select(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), false)), vec2<bool>(true, true), true));
    var var_2 = false;
    let var_3 = !select(select(global1[_wgslsmith_index_u32(max(12342u, var_1.a.x) >> (0u % 32u), 28u)], !select(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], global1[_wgslsmith_index_u32(6672u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]), all(global1[_wgslsmith_index_u32(9376u, 28u)]) & !var_1.c.x), select(global1[_wgslsmith_index_u32(global2.x, 28u)], select(vec4<bool>(var_1.c.x, true, true, false), global1[_wgslsmith_index_u32(abs(4294967295u), 28u)], true), !(!vec4<bool>(var_1.c.x, var_1.c.x, false, var_1.c.x))), global1[_wgslsmith_index_u32(3571u, 28u)]);
    return _wgslsmith_div_f32(572f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -337f))))));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = !all(vec4<bool>(select(true && arg_0.c.x, arg_0.c.x, false), arg_0.c.x, arg_0.c.x, true));
    var var_1 = ~vec4<u32>(arg_0.a.x, ~select(func_2(vec4<bool>(arg_0.c.x, true, arg_0.c.x, arg_0.c.x), vec2<i32>(u_input.a.x, u_input.a.x), 4294967295u, Struct_1(vec3<u32>(0u, global2.x, u_input.b.x), arg_0.b, vec2<bool>(arg_0.c.x, false))), ~u_input.b.x, select(arg_0.c.x, arg_0.c.x, arg_0.c.x)), 4294967295u, arg_0.a.x);
    var var_2 = !(!(!vec3<bool>(true, true, all(vec4<bool>(true, arg_0.c.x, false, arg_0.c.x)))));
    global0 = array<Struct_2, 31>();
    var var_3 = max(arg_0.a, global2.wzw);
    return Struct_2(Struct_1(reverseBits(~global2.xxy) & (vec3<u32>(0u, 0u, var_3.x) ^ vec3<u32>(1u, 40085u, var_3.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(func_3()), 1341f, arg_0.b.x), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-arg_0.b.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: i32) -> vec4<f32> {
    let var_0 = Struct_1(arg_0.a.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(318f * arg_0.a.b.x), -1816f, _wgslsmith_f_op_f32(1562f - -881f), _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1178f, 1012f, arg_0.a.b.x, arg_0.a.b.x))), !global1[_wgslsmith_index_u32(~arg_0.a.a.x, 28u)])))), !arg_0.a.c);
    global2 = ~(~(~(~max(vec4<u32>(0u, 0u, 4294967295u, global2.x), vec4<u32>(1u, 0u, 65908u, var_0.a.x)))));
    var var_1 = true;
    var var_2 = vec2<i32>(-63504i, arg_3);
    let var_3 = abs(arg_1.zw);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(3833f, var_0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - arg_0.a.b.x) - -2722f))), _wgslsmith_f_op_f32(arg_0.a.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a.b.x)) * var_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(true | any(vec3<bool>(true, true, true)), false || var_0, false, var_0), var_0);
    var var_2 = 7771u;
    global0 = array<Struct_2, 31>();
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1570f, _wgslsmith_div_f32(982f, 974f))) * -741f), _wgslsmith_f_op_f32(-985f * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(432f, -390f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1047f)))))), _wgslsmith_f_op_f32(f32(-1f) * -942f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1(Struct_1(vec3<u32>(28714u, 1u, global2.x), vec4<f32>(-682f, 195f, -1000f, 1000f), vec2<bool>(true, false))), select(vec4<i32>(2147483647i, u_input.c, -44874i, u_input.c), -u_input.a, true), !vec2<bool>(var_0, true), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, u_input.a.x, 0i), -vec3<i32>(26592i, u_input.a.x, u_input.a.x))))));
    var var_4 = any(!(!vec3<bool>(true, var_1.x, true)));
    var var_5 = firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(~(i32(-1i) * -1i), 34591i), 1i, u_input.c));
    let var_6 = Struct_2(Struct_1(reverseBits(global2.wxy), var_3, !(!func_1(Struct_1(vec3<u32>(0u, 1u, global2.x), var_3, var_1.wx)).a.c)), -364f);
    let var_7 = vec4<u32>(global2.x, ~4294967295u, ~0u, _wgslsmith_div_u32(abs(~(~1u)), ~_wgslsmith_div_u32(~u_input.b.x, global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, func_1(Struct_1(vec3<u32>(global2.x, var_6.a.a.x, u_input.b.x), vec4<f32>(var_6.a.b.x, -1000f, -481f, var_3.x), var_1.yz)).a.a.x, ~54780u, var_6.a.a.x), var_7), ~func_1(func_1(var_6.a).a).a.a.x), ~(~max(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_7.x), vec2<u32>(0u, 14757u), var_7.ww), u_input.b.yy & vec2<u32>(39567u, 45347u))));
}

