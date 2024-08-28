struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(1267f, 584f, 1245f, 727f, 1348f, 1294f, 158f, -1000f, -695f, -460f, -357f);

var<private> global1: array<Struct_1, 9>;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> bool {
    global2 = arg_3;
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-284f - global2.d.c);
    let var_1 = -674f;
    var var_2 = global1[_wgslsmith_index_u32(1u, 9u)];
    let var_3 = 0i;
    let var_4 = select(vec3<bool>(var_2.e.x, all(!vec3<bool>(false, var_2.e.x, false)), func_2(Struct_2(-vec3<i32>(1i, 5809i, arg_1.x), !global2.b, Struct_1(arg_0, vec4<i32>(-82947i, -1i, var_3, -1i), var_2.c, global2.c.b.xw, vec3<bool>(false, global2.b.x, var_2.e.x)), Struct_1(var_2.a, vec4<i32>(-35981i, 1036i, arg_1.x, arg_1.x), 2445f, vec2<i32>(var_2.b.x, 28342i), var_2.e)), 22439u, 1i << (_wgslsmith_sub_u32(global2.c.a.x, 4294967295u) % 32u), Struct_2(-var_2.b.xxy, global2.b, Struct_1(var_2.a, vec4<i32>(1i, arg_1.x, 0i, var_3), 1320f, vec2<i32>(-8138i, var_2.d.x), vec3<bool>(false, global2.d.e.x, false)), Struct_1(vec3<u32>(u_input.a.x, 11443u, global2.d.a.x), vec4<i32>(10234i, global2.c.d.x, var_3, arg_1.x), var_2.c, global2.d.b.xz, global2.c.e)))), !var_2.e, true);
    return global2.b;
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = Struct_2(vec3<i32>(_wgslsmith_clamp_i32(global2.c.d.x << (global2.c.a.x % 32u), 1i, global2.d.d.x | 1i), countOneBits(0i), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_add_i32(10989i, -2147483647i)), (global2.d.b.x & -27456i) | 0i)), global2.b, Struct_1(~(~(~vec3<u32>(60070u, 4294967295u, u_input.b))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(-44644i, 1i), reverseBits(global2.c.d.x)), abs(-50514i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global2.d.d.x, 1i, 0i), global2.c.b), 57590i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 2069u, 17942u), 11u)] - _wgslsmith_f_op_f32(1000f - 886f))), ~vec2<i32>(26812i, 27645i) << (abs(u_input.a.yx ^ vec2<u32>(u_input.b, global2.d.a.x)) % vec2<u32>(32u)), vec3<bool>(true, global2.d.e.x, !any(global2.b.xx))), global2.c);
    global0 = array<f32, 11>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(672f, global0[_wgslsmith_index_u32(~59812u, 11u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(60781u, 11u)])) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1577f, -1222f, 1292f)))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.c + _wgslsmith_f_op_f32(min(var_0.c.c, var_0.c.c)))) * -1905f), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d.c - global0[_wgslsmith_index_u32(4294967295u, 11u)]))) + arg_0)));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.c.c, 133f)) * vec3<f32>(380f, global2.c.c, global2.c.c)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-125f, arg_0, global2.c.c))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1199f, var_0.c.c, 827f) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.d.c, -1068f, 358f), vec3<f32>(494f, global2.d.c, arg_0))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c, _wgslsmith_f_op_f32(-global2.d.c), var_0.c.c)));
    return ~(~66296i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(global2.a.x, firstTrailingBit(global2.a.x)), ~vec2<i32>(0i, -18882i << (1u % 32u))));
    let var_1 = global2.b.zxy;
    var var_2 = !global2.b.xx;
    var var_3 = Struct_2(-vec3<i32>(i32(-1i) * -19927i, _wgslsmith_clamp_i32(-81786i, -63873i, _wgslsmith_dot_vec4_i32(global2.c.b, vec4<i32>(global2.a.x, -9347i, 0i, 0i))), _wgslsmith_clamp_i32(~(-55212i), abs(145i), 1i)), func_1(~max(_wgslsmith_clamp_vec3_u32(global2.c.a, vec3<u32>(4294967295u, global2.d.a.x, 14970u), global2.d.a), _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(0u, u_input.b, 0u))), global2.c.d), Struct_1(~(global2.c.a | vec3<u32>(global2.c.a.x, 4294967295u, 0u)), _wgslsmith_mod_vec4_i32(global2.c.b, vec4<i32>(18708i, -38606i, _wgslsmith_clamp_i32(var_0.x, 14482i, 7124i), ~(-1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 11u)])))), vec2<i32>(-27011i, -48676i), vec3<bool>(true, var_2.x, true && (var_2.x || var_2.x))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~(global2.c.a.x >> (u_input.a.x % 32u)), u_input.a.x, ~(~u_input.a.x)), vec3<u32>(u_input.a.x, 1u, _wgslsmith_sub_u32(u_input.b, u_input.b) << (countOneBits(21660u) % 32u))), 9u)]);
    var_2 = var_1.zz;
    let var_4 = Struct_2(-vec3<i32>(var_3.a.x, _wgslsmith_div_i32(1i, var_0.x), -1i), var_3.b, Struct_1(~(~global2.c.a), _wgslsmith_add_vec4_i32(vec4<i32>(global2.a.x, func_3(101f), ~(-2147483647i), _wgslsmith_clamp_i32(global2.a.x, -1i, -2147483647i)), var_3.d.b), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~abs(var_3.c.a.x), 11u)], _wgslsmith_f_op_f32(-107f - _wgslsmith_f_op_f32(ceil(var_3.c.c))))), select(global2.d.d, vec2<i32>(-2147483647i, var_3.a.x), func_1(vec3<u32>(1u, 51889u, 0u), global2.c.b.yz).ww), !select(var_3.b.yww, global2.d.e, true)), Struct_1(abs(~var_3.c.a) >> (~u_input.a % vec3<u32>(32u)), vec4<i32>(-1i, _wgslsmith_add_i32(~34713i, 1i), max(_wgslsmith_dot_vec2_i32(var_3.a.zz, var_3.d.b.yw), max(-2147483647i, var_3.d.d.x)), -34522i), -302f, vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(var_3.c.b.x, var_0.x)), func_3(-1229f)), vec3<bool>(false, -var_0.x == var_3.d.b.x, !var_2.x)));
    var_0 = ~(~_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(11610i, var_0.x), _wgslsmith_add_vec2_i32(var_3.d.b.xx, vec2<i32>(global2.d.b.x, var_4.c.d.x))), var_4.d.d));
    let var_5 = vec3<bool>(var_1.x, false, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_3.a.x, -2147483647i), abs(-_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(var_4.d.b, var_3.c.b), ~31680i)));
}

