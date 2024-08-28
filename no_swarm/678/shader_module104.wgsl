struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_4 = Struct_4(vec4<u32>(26109u, 17947u, 832u, 4294967295u), false, vec3<i32>(44037i, -37155i, 5749i));

var<private> global2: vec4<bool>;

var<private> global3: array<vec3<f32>, 27>;

var<private> global4: array<i32, 4>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> i32 {
    var var_0 = vec2<f32>(724f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(ceil(364f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.xw) * _wgslsmith_f_op_vec2_f32(-global0.ww));
    var var_1 = arg_1.x;
    return global1.c.x;
}

fn func_3() -> i32 {
    let var_0 = Struct_4(vec4<u32>(select(global1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global1.a.x, u_input.c.x, u_input.c.x), global1.a) & reverseBits(u_input.e.x), global1.b), ~(~15772u), _wgslsmith_mod_u32(u_input.c.x, global1.a.x), global1.a.x >> ((firstTrailingBit(4294967295u) & ~global1.a.x) % 32u)), global2.x, vec3<i32>(-global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.a.x, 60292u), 4u)] >> (_wgslsmith_mult_u32(1u, countOneBits(33235u)) % 32u), _wgslsmith_div_i32(u_input.d.x, _wgslsmith_mult_i32(u_input.a, 0i)) << (u_input.e.x % 32u), min(select(-2147483647i, 1i, true) << (~u_input.e.x % 32u), -18178i)));
    let var_1 = select(global2.wy, global2.wy, vec2<bool>(any(!global2.yzz), !(_wgslsmith_f_op_f32(min(-120f, 1000f)) != _wgslsmith_f_op_f32(max(global0.x, -2198f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1257f));
    var var_3 = vec3<bool>(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), global1.b && (any(select(vec4<bool>(false, var_0.b, false, var_0.b), vec4<bool>(global1.b, false, var_0.b, var_1.x), global2.x)) | var_1.x));
    var var_4 = Struct_2(var_0.c);
    return firstLeadingBit(u_input.a);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> Struct_2 {
    global2 = vec4<bool>(all(!select(global2.zw, vec2<bool>(global1.b, true), global2.xz)), global2.x, global1.b, any(vec2<bool>(true, global2.x)));
    let var_0 = ~(~(0u ^ ~_wgslsmith_clamp_u32(1209u, global1.a.x, arg_1)));
    var var_1 = min(u_input.d.x & -4301i, global4[_wgslsmith_index_u32(~select(4294967295u, ~arg_1, true), 4u)] | ~(-func_1(true, global2.zxx)));
    var var_2 = true;
    let var_3 = Struct_4(select(~(~(vec4<u32>(u_input.b.x, global1.a.x, 0u, 4294967295u) | global1.a)), abs(_wgslsmith_add_vec4_u32(u_input.e, vec4<u32>(0u, arg_0.x, 1u, 96348u))) << (global1.a % vec4<u32>(32u)), true | (!global2.x && global1.b)), true, u_input.d);
    return Struct_2(~vec3<i32>(-(~(-2147483647i)), func_3(), ~(2147483647i ^ global1.c.x)));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> bool {
    var var_0 = 591f;
    global2 = vec4<bool>(true, true, global1.b, any(!(!select(global2.wwx, global2.zxx, global2.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-989f, _wgslsmith_f_op_f32(max(global0.x, -1667f)))))));
    let var_2 = firstLeadingBit(global1.a.x);
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(-1178f, var_1.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.zz), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0.wy))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(floor(var_1.a)))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_sub_i32(~(-10218i), _wgslsmith_mod_i32(~firstLeadingBit(0i), func_1(true, !global2.xxy))));
    let var_1 = Struct_4(u_input.c, !any(select(global2.yy, global2.yy, global2.zx)) & !func_4(func_2(global1.a.yww, u_input.c.x), ~global1.a.x, func_2(vec3<u32>(u_input.e.x, 4294967295u, global1.a.x), 9813u), global1.c.x), -_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d, ~global1.c), -vec3<i32>(0i, 0i, global4[_wgslsmith_index_u32(global1.a.x, 4u)])));
    let var_2 = Struct_1(691f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(685f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0.x)))))), global1.c.zz);
}

