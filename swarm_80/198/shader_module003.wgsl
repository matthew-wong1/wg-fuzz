struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: vec3<i32> = vec3<i32>(-8899i, i32(-2147483648), 3860i);

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: array<vec3<bool>, 16>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    global2 = arg_0;
    global4 = array<vec3<bool>, 16>();
    let var_0 = arg_0;
    global3 = Struct_1(global2.a, arg_0.b);
    let var_1 = arg_0;
    return -(~u_input.a.x);
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global4 = array<vec3<bool>, 16>();
    let var_0 = true;
    var var_1 = !select(select(global4[_wgslsmith_index_u32(~(~84257u), 16u)], vec3<bool>(any(vec3<bool>(global2.b.x, global2.b.x, false)), global2.b.x, all(vec3<bool>(false, var_0, true))), !global2.b.x), global4[_wgslsmith_index_u32(arg_0.x, 16u)], all(!select(vec2<bool>(var_0, true), global2.b, true)));
    var var_2 = countOneBits(max(vec4<u32>(min(countOneBits(16678u), global2.a), countOneBits(~arg_0.x), arg_0.x, ~global3.a ^ countOneBits(global3.a)), ~firstTrailingBit(~vec4<u32>(4294967295u, 4294967295u, global3.a, global3.a))));
    var_2 = vec4<u32>(abs(~0u & _wgslsmith_mod_u32(15927u, arg_0.x)) & ~10854u, global2.a ^ 13680u, var_2.x, _wgslsmith_mod_u32(var_2.x, arg_0.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-444f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(315f + 1278f) - _wgslsmith_f_op_f32(403f + -1000f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -449f)), 311f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1339f, -885f) * -629f)))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(func_2(Struct_1(_wgslsmith_mult_u32(1u, 4294967295u), global2.b), u_input.a), arg_2), _wgslsmith_mod_vec2_i32(u_input.a.zz, -firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(835f, arg_3, -1135f, 204f) + vec4<f32>(381f, -646f, arg_0, arg_3)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1750f, arg_3, arg_0)))) - vec4<f32>(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -1042f), _wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(vec2<u32>(77u, 2008u))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0))))), arg_0, -779f, -1517f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -300f), arg_3, _wgslsmith_f_op_f32(sign(arg_0)), -495f) + _wgslsmith_f_op_vec4_f32(-var_1))))));
    global1 = vec3<i32>(var_0.x, var_0.x << (~arg_1.a % 32u), arg_2);
    var var_3 = Struct_1(~(~arg_1.a), global2.b);
    return Struct_1(~global3.a | ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, 36299u, var_3.a, 50656u), vec4<u32>(var_3.a, arg_1.a, var_3.a, global3.a)), _wgslsmith_add_u32(global3.a, 4294967295u)), arg_1.b);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<u32>) -> f32 {
    var var_0 = vec4<f32>(-397f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-460f, 138f)), -767f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(499f + -381f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-347f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-199f)) + _wgslsmith_f_op_f32(ceil(-782f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-240f)))));
    global4 = array<vec3<bool>, 16>();
    var var_1 = Struct_1(min(_wgslsmith_mod_u32(~global3.a, abs(4294967295u >> (0u % 32u))), global2.a), !global3.b);
    var var_2 = abs(-global1.x);
    global3 = func_1(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1446f)), Struct_1(43708u, !func_1(_wgslsmith_f_op_f32(var_0.x * var_0.x), Struct_1(arg_1.a, vec2<bool>(arg_0, true)), _wgslsmith_mod_i32(-2147483647i, 33395i), _wgslsmith_f_op_f32(-754f * var_0.x)).b), -1i, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(!global3.b.x, func_1(-2191f, global0[_wgslsmith_index_u32(4212u, 32u)], u_input.a.x, 295f), max(vec3<u32>(global3.a, global3.a, global3.a), vec3<u32>(global3.a, global3.a, global3.a)), ~vec3<u32>(27205u, global3.a, 1u))) - _wgslsmith_f_op_f32(func_4(global3.b.x || false, func_1(792f, Struct_1(13391u, vec2<bool>(global3.b.x, false)), global1.x, -1241f), abs(vec3<u32>(global3.a, 33681u, 1u)), vec3<u32>(global3.a, 10290u, global3.a)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -817f) - -244f)) + -686f);
    let var_2 = func_1(var_1, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(false, func_1(var_1, global0[_wgslsmith_index_u32(4294967295u, 32u)], u_input.a.x, var_1), _wgslsmith_add_vec3_u32(vec3<u32>(19973u, 4294967295u, global3.a), vec3<u32>(4294967295u, 17606u, 4294967295u)), vec3<u32>(4294967295u, global3.a, 0u))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(291f, 1286f, global3.b.x)))), Struct_1(global3.a, !(!vec2<bool>(global3.b.x, true))), ~_wgslsmith_div_i32(u_input.a.x, global1.x), _wgslsmith_div_f32(var_1, var_1)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(select(u_input.a.wzx, u_input.a.yzz, global3.b.x), _wgslsmith_div_vec3_i32(u_input.a.yzw, vec3<i32>(-44165i, -2147483647i, 0i))) >> (~global3.a % 32u), select(func_2(func_1(var_1, global0[_wgslsmith_index_u32(6622u, 32u)], -49725i, 309f), u_input.a), _wgslsmith_mult_i32(min(u_input.a.x, -53940i), u_input.a.x), all(vec3<bool>(true, global2.b.x, global3.b.x)))), 518f);
    global4 = array<vec3<bool>, 16>();
    global3 = var_2;
    let var_3 = var_2;
    global4 = array<vec3<bool>, 16>();
    let var_4 = func_1(-297f, global0[_wgslsmith_index_u32(0u, 32u)], global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1000f)))));
    var var_5 = select(-1i, max(28677i, 2147483647i), global3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1520f, 1046f, -496f, 1267f));
}

