struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 1847f;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(-1i, -419f, 2147483647i, 0u), Struct_1(-12983i, -888f, -1i, 4294967295u), Struct_1(i32(-2147483648), 1215f, 27646i, 106288u), Struct_1(2147483647i, 1000f, i32(-2147483648), 1u), Struct_1(36664i, -608f, -65666i, 4294967295u), Struct_1(-1i, 1805f, 504i, 0u), Struct_1(-53747i, 346f, -70500i, 1u), Struct_1(-25926i, -542f, -10735i, 0u), Struct_1(23999i, -103f, -1i, 35389u), Struct_1(-1i, 292f, 0i, 38676u), Struct_1(-81930i, 362f, i32(-2147483648), 1u));

var<private> global3: Struct_1;

var<private> global4: array<f32, 2>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec2<i32>) -> u32 {
    return _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), global3.d) & (~(~u_input.a.yx) ^ _wgslsmith_div_vec2_u32(u_input.a.zx, ~u_input.a.xz)));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_2 {
    var var_0 = vec2<u32>(abs(u_input.a.x), u_input.a.x);
    global0 = global2[_wgslsmith_index_u32(41771u, 11u)];
    var var_1 = vec3<u32>(func_3(~u_input.b.yy >> ((u_input.a.xz | vec2<u32>(u_input.a.x, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1035f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b, -604f) + vec2<f32>(-214f, global4[_wgslsmith_index_u32(u_input.a.x, 2u)]))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-51615i, 10324i), u_input.b.zy), u_input.b.yz)), 10630u, 7881u) | _wgslsmith_mod_vec3_u32(vec3<u32>(max(~20171u, var_0.x), ~abs(1u), global0.d), u_input.a);
    global4 = array<f32, 2>();
    let var_2 = ~vec2<i32>(u_input.b.x | ~1i, u_input.c ^ 2147483647i);
    return Struct_2(global2[_wgslsmith_index_u32(func_3(-select(var_2, var_2, arg_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, -378f))), ~vec2<i32>(global3.a, -18738i) >> (~vec2<u32>(var_1.x, u_input.a.x) % vec2<u32>(32u))) >> (1u % 32u), 11u)], vec3<bool>(!(!any(vec4<bool>(arg_1, true, arg_1, arg_0))), true, !(func_3(vec2<i32>(1i, u_input.c), vec2<f32>(-1000f, global4[_wgslsmith_index_u32(60610u, 2u)]), vec2<i32>(-1i, 30228i)) >= 21629u)));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> i32 {
    global4 = array<f32, 2>();
    let var_0 = ~max(~(~vec4<u32>(36197u, 4294967295u, global3.d, global3.d)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 35173u, u_input.a.x, 132469u) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, global3.d), vec4<u32>(global0.d, 1u, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec4_u32(~vec4<u32>(global3.d, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 29170u, global0.d, u_input.a.x), vec4<u32>(28167u, global3.d, 8718u, u_input.a.x)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-265f))) - 240f));
    let var_1 = func_2(true, true);
    let var_2 = var_1.b.x;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(abs(abs(1i)) ^ ((u_input.c >> (global0.d % 32u)) ^ max(var_1.a.c, global3.c)), countOneBits(1i), abs(-3754i) >> (countOneBits(max(42214u, 7860u)) % 32u), -2147483647i), vec4<i32>(func_2(var_1.b.x, func_2(true, !var_1.b.x).b.x).a.a, global0.c, i32(-1i) * -60359i, global0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~(-max(reverseBits(vec4<i32>(u_input.c, global0.c, u_input.b.x, u_input.c)), vec4<i32>(global3.a, u_input.b.x, global3.c, 0i))), min(vec4<i32>(global0.a >> (global0.d % 32u), min(_wgslsmith_add_i32(global0.c, u_input.b.x), global3.c), -1i, 0i), firstTrailingBit(max(~vec4<i32>(-1i, -2147483647i, -2147483647i, u_input.b.x), -vec4<i32>(2147483647i, 10105i, 44486i, -1682i)))), any(vec3<bool>(false, true, true)));
    let var_1 = -_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(select(reverseBits(vec4<i32>(global3.c, 37462i, u_input.b.x, 2147483647i)), select(vec4<i32>(-2147483647i, global0.c, global0.a, 25273i), vec4<i32>(u_input.c, global3.a, global3.c, global0.c), vec4<bool>(true, true, false, true)), any(vec4<bool>(true, true, true, false))), vec4<i32>(func_1(vec3<f32>(428f, -105f, global3.b), 1017f), -u_input.c, 1866i, -15944i)), select(vec4<i32>(1i, 0i, _wgslsmith_add_i32(0i, 39601i), 14708i), abs(vec4<i32>(var_0.x, -11412i, var_0.x, global0.a) ^ vec4<i32>(-2147483647i, global3.c, -2147483647i, -43284i)), true));
    var var_2 = reverseBits(u_input.b) ^ var_1.wxx;
    let var_3 = select(vec3<bool>(true, false, true), !select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -select(~var_0.x, ~var_2.x, all(vec3<bool>(true, false, true))) < func_2(select(true, true, true), any(vec4<bool>(true, false, false, true)) || all(vec3<bool>(true, false, true))).a.c);
    let var_4 = func_2(global4[_wgslsmith_index_u32(u_input.a.x, 2u)] < _wgslsmith_f_op_f32(max(-283f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(814f)), _wgslsmith_f_op_f32(global0.b * global0.b)))), true);
    var_2 = select(var_0.xyw, abs(max(max(vec3<i32>(2147483647i, -33030i, -38885i), vec3<i32>(var_4.a.c, global0.c, global0.a) & vec3<i32>(1i, var_0.x, var_0.x)), ~(~var_0.wzw))), !func_2(any(vec2<bool>(true, true)), var_3.x).b.x);
    var_2 = vec3<i32>(-func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1176f, 601f, 540f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f))), abs(var_1.x), 2147483647i);
    global0 = var_4.a;
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.b, 759f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1074f, 191f))), var_4.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.wyz, _wgslsmith_f_op_f32(f32(-1f) * -356f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_4.a.b, -508f, 178f))) + _wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(var_4.a.d, 2u)], 1523f, 1715f), vec3<f32>(global3.b, var_5.x, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(var_4.a.b * global3.b), -1478f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(38950u, 2u)]))))));
}

