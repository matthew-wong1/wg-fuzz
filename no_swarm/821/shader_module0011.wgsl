struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<bool, 12> = array<bool, 12>(false, false, true, true, false, true, true, false, true, true, false, true);

var<private> global2: vec2<f32>;

var<private> global3: array<bool, 9>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> i32 {
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.xw)) * arg_1.a.yy), arg_1.a.xw);
    let var_0 = abs(4294967295u & ~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, u_input.a.x), u_input.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.a.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.xx)), select(vec2<bool>(any(vec3<bool>(global3[_wgslsmith_index_u32(var_0, 9u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], true)), !global1[_wgslsmith_index_u32(var_0, 12u)]), !select(vec2<bool>(false, global1[_wgslsmith_index_u32(var_0, 12u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(62301u, 12u)]), false), !select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], global3[_wgslsmith_index_u32(1u, 9u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], true))))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1110f * arg_1.a.x) + _wgslsmith_f_op_f32(step(554f, -1156f))), _wgslsmith_f_op_f32(min(arg_1.a.x, _wgslsmith_f_op_f32(floor(1160f))))))));
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1208f)), 1000f))));
    var var_2 = global0[_wgslsmith_index_u32(abs(max(firstLeadingBit(~abs(u_input.a.x)), ~(~u_input.a.x))), 17u)];
    return ~(-1i);
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 17u)];
    return Struct_1(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), -399f, 864f));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = -1193f;
    global3 = array<bool, 9>();
    var var_1 = 20012u;
    let var_2 = func_3(vec3<i32>(_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(func_2(global1[_wgslsmith_index_u32(1u, 12u)], arg_0), firstTrailingBit(2147483647i))), ~countOneBits(_wgslsmith_add_i32(-69135i, -1i)), ~0i), ~(-21744i));
    var var_3 = -310f;
    return firstTrailingBit(vec2<u32>(u_input.a.x, _wgslsmith_div_u32(4294967295u, u_input.a.x) | firstLeadingBit(1u)) | abs(select(u_input.a.xx, u_input.a.zx ^ vec2<u32>(u_input.a.x, 4294967295u), !vec2<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(15001u, 12u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 82594u), vec2<u32>(46958u, 4294967295u)), select(~u_input.a.zz, vec2<u32>(4294967295u, u_input.a.x), global1[_wgslsmith_index_u32(u_input.a.x, 12u)])), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 132977u), u_input.a | _wgslsmith_mult_vec3_u32(vec3<u32>(55641u, 0u, 20742u), u_input.a)), ~u_input.a.x, u_input.a.x);
    let var_1 = ~_wgslsmith_sub_vec2_u32(select(abs(~vec2<u32>(u_input.a.x, 0u)), func_1(global0[_wgslsmith_index_u32(var_0.x, 17u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(9356u, 12u)])), _wgslsmith_mod_vec2_u32(u_input.a.xy, ~firstTrailingBit(vec2<u32>(var_0.x, 1u))));
    var var_2 = !(_wgslsmith_f_op_f32(ceil(global2.x)) <= global2.x);
    var_2 = any(select(vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(var_0.x, 9u)] | false, true, true), var_1.x < min(9721u, var_0.x))) || false;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(func_3(firstTrailingBit(vec3<i32>(1i, -4394i, 44292i)), firstTrailingBit(-1i)).a.xzx)));
    var var_4 = func_1(func_3(vec3<i32>(1i, 1i, 1i) >> (~countOneBits(var_0.zwx) % vec3<u32>(32u)), -30028i)).x;
    var var_5 = ~_wgslsmith_dot_vec3_i32(~vec3<i32>(~25899i, i32(-1i) * -1i, ~(-1i)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-56253i, 19792i, -10064i), vec3<i32>(-19765i, -1044i, 1i)), select(vec3<i32>(6837i, -60241i, -8191i), vec3<i32>(-1i, 1i, 1i), global1[_wgslsmith_index_u32(0u, 12u)])), ~vec3<i32>(-14240i, 33201i, 2392i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.x, -1014f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1214f))), 1i | _wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, func_2(global1[_wgslsmith_index_u32(var_0.x, 12u)], global0[_wgslsmith_index_u32(var_1.x, 17u)]), func_2(true, global0[_wgslsmith_index_u32(4294967295u, 17u)])), _wgslsmith_add_i32(-2147483647i, _wgslsmith_clamp_i32(-1i, -26285i, 2147483647i))), _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -1i, -1i, 8119i), vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_mod_i32(countOneBits(17024i), -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(1282f + global2.x)))))));
}

