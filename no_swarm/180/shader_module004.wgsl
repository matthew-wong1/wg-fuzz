struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(4294967295u, true, Struct_1(vec3<u32>(76867u, 42111u, 91419u), 1512f), -7936i), Struct_2(31594u, true, Struct_1(vec3<u32>(4701u, 26639u, 1u), -1651f), 2147483647i), Struct_2(3988u, true, Struct_1(vec3<u32>(442u, 73128u, 34700u), -1344f), -1i));

var<private> global1: Struct_2;

var<private> global2: array<vec3<bool>, 30>;

var<private> global3: array<vec4<bool>, 19>;

var<private> global4: array<vec2<u32>, 3>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    let var_0 = ~vec4<u32>(30049u, ~global1.a, _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(27203u, 13602u, 1u)), vec3<u32>(~u_input.a.x, firstLeadingBit(4294967295u), ~u_input.c.x)), u_input.c.x);
    return -u_input.d.x & min(max(abs(39498i), -1i), abs(-(global1.d | 23930i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    var var_0 = func_3(true, !all(!vec2<bool>(global1.b, arg_3)));
    var_0 = -70270i;
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    return global1.c.a.x | arg_2.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<u32>, arg_3: f32) -> Struct_1 {
    global4 = array<vec2<u32>, 3>();
    var var_0 = u_input.d.zy;
    global4 = array<vec2<u32>, 3>();
    global1 = global0[_wgslsmith_index_u32(80387u, 3u)];
    var_0 = -vec2<i32>(reverseBits(~(i32(-1i) * -1017i)), var_0.x);
    return global1.c;
}

fn func_1(arg_0: i32) -> vec3<bool> {
    global0 = array<Struct_2, 3>();
    var var_0 = Struct_2(reverseBits(13001u >> (global1.a % 32u)), any(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(4294967295u), ~(~19866u)), 30u)]), func_4(select(vec4<bool>(global1.c.b <= -1042f, true, -1761f > global1.c.b, !global1.b), select(select(global3[_wgslsmith_index_u32(64351u, 19u)], global3[_wgslsmith_index_u32(20739u, 19u)], vec4<bool>(global1.b, false, false, global1.b)), global3[_wgslsmith_index_u32(func_2(u_input.d, Struct_2(1u, true, global1.c, arg_0), u_input.c, global1.b), 19u)], all(vec3<bool>(global1.b, true, global1.b))), all(!vec2<bool>(true, global1.b))), -(-65279i ^ arg_0) & 1i, vec3<u32>(1u, func_2(u_input.d, global0[_wgslsmith_index_u32(global1.a, 3u)], u_input.a, false), _wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(31202u, 3u)], global4[_wgslsmith_index_u32(u_input.b.x, 3u)])) >> (vec3<u32>(1u, ~u_input.b.x, ~1u) % vec3<u32>(32u)), -522f), _wgslsmith_mult_i32(arg_0, _wgslsmith_add_i32(-1i, global1.d)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1560f * _wgslsmith_div_f32(global1.c.b, _wgslsmith_f_op_f32(select(var_0.c.b, var_0.c.b, global1.b))))) - 830f);
    global0 = array<Struct_2, 3>();
    var_1 = _wgslsmith_f_op_f32(select(var_0.c.b, var_0.c.b, any(vec4<bool>(all(global2[_wgslsmith_index_u32(26972u, 30u)]), any(global3[_wgslsmith_index_u32(~1u, 19u)]), true, global1.b))));
    return select(!(!(!global2[_wgslsmith_index_u32(4294967295u, 30u)])), select(select(!global2[_wgslsmith_index_u32(~var_0.c.a.x, 30u)], select(vec3<bool>(global1.b, false, global1.b), vec3<bool>(true, false, true), select(global2[_wgslsmith_index_u32(24060u, 30u)], vec3<bool>(var_0.b, false, true), global1.b)), !vec3<bool>(global1.b, false, false)), select(vec3<bool>(all(vec3<bool>(true, false, true)), any(global2[_wgslsmith_index_u32(0u, 30u)]), any(global3[_wgslsmith_index_u32(u_input.b.x, 19u)])), global2[_wgslsmith_index_u32(~(~4294967295u), 30u)], !global2[_wgslsmith_index_u32(~var_0.c.a.x, 30u)]), any(vec2<bool>(var_0.b, !global1.b))), select(global2[_wgslsmith_index_u32(global1.c.a.x, 30u)], !select(select(vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(global1.b, true, true), var_0.b), select(global2[_wgslsmith_index_u32(9182u, 30u)], vec3<bool>(true, global1.b, true), vec3<bool>(true, true, global1.b)), select(global2[_wgslsmith_index_u32(8872u, 30u)], global2[_wgslsmith_index_u32(global1.a, 30u)], vec3<bool>(global1.b, var_0.b, true))), any(vec4<bool>(all(global3[_wgslsmith_index_u32(u_input.b.x, 19u)]), any(global2[_wgslsmith_index_u32(var_0.c.a.x, 30u)]), global1.b, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(any(!func_1(26404i)), select(true, true, _wgslsmith_f_op_f32(ceil(331f)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c.b * -341f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_sub_u32(~(~53267u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(global1.c.a.x, 0u), 1u, u_input.b.x)) == 24745u);
    var var_1 = !(!global1.b);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-384f, global1.c.b)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.c.b, global1.c.b), vec2<f32>(-553f, -367f), global1.b))), vec2<f32>(-1640f, global1.c.b), !vec2<bool>(var_0.x, global1.b)))));
    let var_3 = var_2.x;
    var var_4 = ~_wgslsmith_div_vec3_i32(u_input.d.yyz, _wgslsmith_mod_vec3_i32(max(u_input.d.wxw, _wgslsmith_add_vec3_i32(u_input.d.xyz, vec3<i32>(global1.d, -2147483647i, 1i))), ~(-u_input.d.xzy)));
    let var_5 = max(~u_input.b.zx, _wgslsmith_clamp_vec2_u32(select(abs(~vec2<u32>(global1.a, 1u)), global1.c.a.yx, vec2<bool>(!var_0.x, select(var_0.x, global1.b, global1.b))), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, ~global1.a), u_input.b.zx), reverseBits(u_input.c.zz)));
    let var_6 = ~vec4<u32>(~110387u, 1u, _wgslsmith_div_u32(38184u, firstLeadingBit(firstLeadingBit(24048u))), abs(~var_5.x) | _wgslsmith_mult_u32(global1.a << (318u % 32u), ~var_5.x));
    var var_7 = _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-var_4.x, -1i, -1i, ~var_4.x), vec4<i32>(func_3(true, false), func_3(false, false), -var_4.x, func_3(true, false)))), ~firstLeadingBit(~49773i));
    var var_8 = abs(_wgslsmith_mod_i32(2147483647i, -(~_wgslsmith_clamp_i32(global1.d, 0i, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zw, var_2.x, 1i, _wgslsmith_div_f32(var_2.x, global1.c.b), -944f);
}

