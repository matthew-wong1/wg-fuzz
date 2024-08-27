struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec3<f32>, 17>;

var<private> global2: vec4<i32> = vec4<i32>(1i, -19428i, -12330i, i32(-2147483648));

var<private> global3: Struct_1;

var<private> global4: array<i32, 32> = array<i32, 32>(-1i, 33061i, -52453i, 13166i, 1i, -23842i, 18524i, -14509i, -85050i, 2147483647i, i32(-2147483648), 1i, 2147483647i, i32(-2147483648), 35184i, 0i, 0i, -29935i, 31664i, 50341i, 41290i, -29269i, -1i, 14265i, -20623i, 8683i, 24974i, 14621i, 0i, 2147483647i, 2147483647i, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    var var_1 = 11015u;
    return Struct_2(Struct_1(global3.a, vec2<f32>(1f, -1000f), !(!global3.c)));
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global3.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.b - _wgslsmith_f_op_vec2_f32(min(global3.b, vec2<f32>(global3.b.x, -1070f))))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global3.b * vec2<f32>(494f, global3.b.x))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1513f + global3.b.x), global3.b.x, global3.c.x))))));
    global2 = ~vec4<i32>(u_input.d.x, ~5053i, global2.x, _wgslsmith_div_i32(1i, 1i));
    let var_1 = func_2();
    let var_2 = Struct_3(var_1.a);
    global1 = array<vec3<f32>, 17>();
    return Struct_4(u_input.c);
}

fn func_3() -> bool {
    return global3.c.x;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec2<u32>) -> vec4<i32> {
    global0 = u_input.a << (~(~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u));
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(global3.b.x, -1301f), arg_1);
    global4 = array<i32, 32>();
    var var_1 = Struct_3(Struct_1(vec4<bool>(any(global3.a.wwz) | all(vec4<bool>(false, false, global3.c.x, true)), (-1i | global4[_wgslsmith_index_u32(arg_2.x, 32u)]) < (global2.x & global4[_wgslsmith_index_u32(global0.x, 32u)]), true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(293f)), -939f)), !func_2().a.a));
    var var_2 = vec3<bool>(true, global3.a.x, false == all(var_1.a.c.yw));
    return _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(u_input.d, abs(vec4<i32>(-1i, -17990i, _wgslsmith_sub_i32(global2.x, 49243i), _wgslsmith_dot_vec4_i32(u_input.d, u_input.d)))), ~(vec4<i32>(14035i >> (u_input.a.x % 32u), global2.x, -10120i, global4[_wgslsmith_index_u32(~arg_0.a, 32u)]) >> (u_input.a % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(_wgslsmith_add_vec3_i32(firstTrailingBit(reverseBits(global2.xyz)), ~(~vec3<i32>(-1i, 16717i, global4[_wgslsmith_index_u32(0u, 32u)]))));
    global2 = func_4(func_1(reverseBits(-select(global2.x, global4[_wgslsmith_index_u32(global0.x, 32u)], false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b)), select(~(~(~global0.yw)), vec2<u32>(~u_input.c, 8155u), func_3()));
    global0 = min(u_input.a, u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(0u, 17u)]))) + global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(66326u, 1u), 21835u | u_input.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(27125u, 16641u, 30892u, 75769u), u_input.a, u_input.a) << (~vec4<u32>(u_input.c, 0u, 1u, 4294967295u) % vec4<u32>(32u))), 17u)]) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(1u, 17u)])))));
    let var_2 = vec2<bool>(all(!select(func_2().a.c.xy, vec2<bool>(global3.c.x, global3.c.x), global3.a.ww)), true);
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(118f, global3.b.x, -608f)))))), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~56495u, 17u)]), func_2().a.c.yzx))));
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.d.xy, ~abs(vec2<i32>(41868i, global4[_wgslsmith_index_u32(u_input.b, 32u)]))));
}

