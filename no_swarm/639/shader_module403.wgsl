struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<u32>(40184u, 1u, 21712u, 1u), 20760u, -2100f), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 4294967295u), 0u, -639f), Struct_1(vec4<u32>(0u, 17920u, 0u, 17528u), 88376u, -821f), Struct_1(vec4<u32>(140480u, 4294967295u, 1u, 2816u), 1u, -1818f), Struct_1(vec4<u32>(78297u, 42908u, 45488u, 0u), 60351u, 1179f), Struct_1(vec4<u32>(34781u, 1u, 32669u, 1u), 0u, 445f), Struct_1(vec4<u32>(56112u, 4294967295u, 1u, 54137u), 13924u, -819f), Struct_1(vec4<u32>(4294967295u, 36355u, 34771u, 1u), 22568u, 183f));

var<private> global1: vec3<i32>;

var<private> global2: Struct_1;

var<private> global3: i32;

var<private> global4: array<u32, 21> = array<u32, 21>(1u, 89470u, 0u, 7595u, 46096u, 5302u, 19575u, 0u, 1u, 2949u, 0u, 37857u, 4294967295u, 49959u, 29969u, 0u, 67957u, 98767u, 1u, 4294967295u, 1u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<bool> {
    global1 = -_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(global1.x, 2147483647i)), 6293i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(global1.x, 0i, global1.x, -2147483647i), vec4<i32>(global1.x, 2147483647i, global1.x, global1.x), true), vec4<i32>(global1.x, 10706i, global1.x, global1.x))), -vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(global1.xx, global1.xx), _wgslsmith_mult_i32(global1.x, 16033i)));
    var var_0 = _wgslsmith_f_op_f32(-global2.c);
    var var_1 = Struct_1(vec4<u32>(global2.b, reverseBits(firstLeadingBit(select(0u, global2.b, true))), max(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(1u, 21u)], u_input.a, 0u) << (~26907u % 32u), ~global2.a.x), u_input.a), 5444u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) - -618f) * _wgslsmith_f_op_f32(-global2.c)))));
    var var_2 = Struct_1(firstTrailingBit(max(~global2.a, ~global2.a) ^ var_1.a), 1u ^ _wgslsmith_add_u32(41571u, _wgslsmith_dot_vec2_u32(var_1.a.wy, vec2<u32>(4294967295u, 0u))), _wgslsmith_f_op_f32(978f - _wgslsmith_f_op_f32(f32(-1f) * -872f)));
    var var_3 = global2.a.x;
    return vec2<bool>(any(vec3<bool>(true, true, any(vec3<bool>(true, true, false)))) && true, true);
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>) -> vec4<u32> {
    global4 = array<u32, 21>();
    let var_0 = _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.b.a.xyz, vec3<u32>(89882u, 0u, 4294967295u) | _wgslsmith_clamp_vec3_u32(arg_0.b.a.zxy, vec3<u32>(16468u, 24938u, 59387u), vec3<u32>(global4[_wgslsmith_index_u32(arg_0.b.b, 21u)], 1u, u_input.a))), ~(abs(vec3<u32>(0u, arg_0.b.b, global2.a.x)) | _wgslsmith_mod_vec3_u32(vec3<u32>(1731u, 1u, arg_0.b.b), arg_0.b.a.wxx))));
    let var_1 = ~(-21116i);
    let var_2 = 1i;
    global0 = array<Struct_1, 8>();
    return select(~(~vec4<u32>(27146u, ~global4[_wgslsmith_index_u32(global2.b, 21u)], _wgslsmith_dot_vec3_u32(global2.a.xww, global2.a.xwz), ~2618u)), arg_0.b.a, all(!(!func_3())));
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_mult_vec2_i32(global1.zy, _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(35464i, global1.x), u_input.b), ~global1.zx, -global1.yy)), Struct_1(min(abs(vec4<u32>(global4[_wgslsmith_index_u32(u_input.a, 21u)], 44318u, 4294967295u, 38086u) ^ global2.a), _wgslsmith_div_vec4_u32(global2.a ^ global2.a, ~global2.a)), ~1u, _wgslsmith_f_op_f32(trunc(-942f))));
    let var_1 = ~(select(~(var_0.b.a << (var_0.b.a % vec4<u32>(32u))), func_2(Struct_2(global1.yx, Struct_1(var_0.b.a, global4[_wgslsmith_index_u32(51121u, 21u)], global2.c)), var_0.a.x, vec2<i32>(global1.x, 2147483647i)) << (vec4<u32>(global2.b, u_input.a, global4[_wgslsmith_index_u32(4294967295u, 21u)], global4[_wgslsmith_index_u32(4452u, 21u)]) % vec4<u32>(32u)), all(vec2<bool>(true, true))) & global2.a);
    var var_2 = Struct_2(vec2<i32>(_wgslsmith_sub_i32(-11769i, -global1.x) | global1.x, var_0.a.x), var_0.b);
    global3 = u_input.b;
    return select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !(!vec4<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(true, true)), true, all(vec3<bool>(false, false, true)))), select(vec4<bool>(true, false, true, all(vec3<bool>(false, false, true)) & true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, any(vec3<bool>(false, true, true)), all(vec4<bool>(true, false, true, true)))), vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    var var_0 = arg_2;
    global3 = ~var_0.a.x;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.b.c * -2274f), _wgslsmith_f_op_f32(-global2.c), arg_0 == arg_0)))) + _wgslsmith_div_f32(-1733f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) - 2026f))), 1766f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-985f, 151f) + _wgslsmith_f_op_f32(round(1807f))) * _wgslsmith_div_f32(-312f, arg_1))), _wgslsmith_div_f32(264f, _wgslsmith_f_op_f32(-global2.c)));
    let var_2 = var_1.zzy;
    global2 = Struct_1(select(vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(global2.a.zw, _wgslsmith_sub_vec2_u32(global2.a.yz, arg_2.b.a.ww)), 28995u & (1u & var_0.b.b), ~25870u), select(~firstLeadingBit(vec4<u32>(1u, var_0.b.b, u_input.a, global4[_wgslsmith_index_u32(9831u, 21u)])), ~(vec4<u32>(var_0.b.a.x, 30708u, global2.b, arg_2.b.b) & vec4<u32>(133367u, var_0.b.a.x, global2.b, 88602u)), vec4<bool>(all(vec2<bool>(arg_0, true)), false, all(vec3<bool>(false, false, true)), !arg_0)), -6430i != ~(global1.x & 12680i)), max(17700u, 1u), 1054f);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(abs(i32(-1i) * -81722i), (1i << (~_wgslsmith_add_u32(global2.a.x, 38797u) % 32u)) << (global2.a.x % 32u), _wgslsmith_div_i32(-u_input.b, u_input.b) << (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(~(u_input.b | global1.x), 29563i, -2147483647i)), ~global2.a.zxz, u_input.a, -vec3<i32>(u_input.b, -(u_input.b >> (u_input.a % 32u)), global1.x), _wgslsmith_f_op_f32(max(-792f, _wgslsmith_f_op_f32(func_4(any(func_1()), _wgslsmith_div_f32(-339f, -840f), Struct_2(abs(global1.yz), Struct_1(vec4<u32>(global2.b, global2.a.x, 40929u, u_input.a), 1u, global2.c)), ~(-vec3<i32>(-1212i, 13860i, 2147483647i)))))));
}

