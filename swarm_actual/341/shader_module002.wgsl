struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20>;

var<private> global1: vec2<f32> = vec2<f32>(-1384f, 314f);

var<private> global2: Struct_1;

var<private> global3: array<u32, 19>;

var<private> global4: vec3<f32> = vec3<f32>(255f, -526f, -1223f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>) -> u32 {
    global4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-413f, -832f, 645f))))));
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, ~_wgslsmith_mod_u32(51441u, 87866u)), 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(337f + _wgslsmith_f_op_f32(step(global1.x, global1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b))), any(vec3<bool>(false, false, false))))), -vec2<i32>(2147483647i, 1i), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(min(1u, global3[_wgslsmith_index_u32(0u, 19u)]), global2.a.x)), arg_1.wy), ~100693u);
    global3 = array<u32, 19>();
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -1299f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1246f, -834f), _wgslsmith_div_vec2_f32(vec2<f32>(global2.b, -900f), global4.yz))))));
    return 1u;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<bool>) -> u32 {
    return global3[_wgslsmith_index_u32(abs(4294967295u >> (func_3(countOneBits(global2.c), vec4<u32>(u_input.a, 0u, 1u, ~global3[_wgslsmith_index_u32(4294967295u, 19u)])) % 32u)), 19u)];
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = Struct_1(~(~(~vec3<u32>(global3[_wgslsmith_index_u32(7027u, 19u)], 1u, global2.d.x))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(select(1u, 4294967295u, true), 19u)], func_2(var_0.wx, global2.c.x, var_0), 1u ^ u_input.a), global2.a, global0[_wgslsmith_index_u32(~0u, 20u)]) % vec3<u32>(32u)), 1973f, global2.c, ~global2.d, ~4959u ^ global2.e);
    var var_2 = 1u;
    let var_3 = var_1;
    var var_4 = Struct_2(((_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 18430i, 8042i, 6617i), vec4<i32>(-1i, var_3.c.x, var_1.c.x, var_1.c.x), vec4<i32>(global2.c.x, -1i, 21830i, var_3.c.x)) << (~vec4<u32>(45494u, 4294967295u, 0u, var_3.a.x) % vec4<u32>(32u))) | abs(_wgslsmith_div_vec4_i32(vec4<i32>(-29578i, var_1.c.x, global2.c.x, 1i), vec4<i32>(var_1.c.x, 2147483647i, var_1.c.x, var_1.c.x)))) | -(~(~vec4<i32>(global2.c.x, var_1.c.x, -11554i, -2147483647i))));
    return Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(~(~(-54380i)), (i32(-1i) * -2147483647i) << ((global3[_wgslsmith_index_u32(1u, 19u)] | global3[_wgslsmith_index_u32(u_input.a, 19u)]) % 32u), global2.c.x, -2147483647i), var_4.a));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_2(vec4<i32>(-abs(global2.c.x), arg_3.a.x, global2.c.x, ~(countOneBits(arg_2.c.x) >> (~arg_1.e % 32u))));
    let var_1 = arg_0.x;
    global2 = arg_2;
    let var_2 = func_1();
    let var_3 = arg_1;
    return ~(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.a, -1810f, vec2<i32>(_wgslsmith_mod_i32(global2.c.x, abs(0i << (global2.d.x % 32u))), global2.c.x), vec2<u32>(func_4(vec2<bool>(true, true), Struct_1(vec3<u32>(49940u, u_input.a, 28042u), global2.b, global2.c, vec2<u32>(global3[_wgslsmith_index_u32(global2.d.x, 19u)], 48658u), global2.e), Struct_1(vec3<u32>(global2.d.x, 12217u, 1u), -216f, vec2<i32>(0i, global2.c.x), vec2<u32>(global3[_wgslsmith_index_u32(global2.a.x, 19u)], 0u), 0u), func_1()), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u | u_input.a, func_2(vec2<bool>(true, true), global2.c.x, vec4<bool>(true, true, false, false))), 19u)]) << (max(global2.d, vec2<u32>(global3[_wgslsmith_index_u32(func_2(vec2<bool>(false, false), global2.c.x, vec4<bool>(true, false, false, true)), 19u)], ~1u)) % vec2<u32>(32u)), 12290u);
    var var_1 = func_1();
    var_0 = Struct_1(min(_wgslsmith_mult_vec3_u32(~var_0.a, vec3<u32>(39110u, ~4294967295u, 44057u)), max(global2.a, global0[_wgslsmith_index_u32(1u, 20u)])), 529f, -reverseBits(var_1.a.yz), _wgslsmith_mult_vec2_u32(var_0.a.zz, ~reverseBits(var_0.d)), 0u);
    var var_2 = 1u;
    var var_3 = Struct_1(~vec3<u32>(4294967295u, u_input.a, ~global3[_wgslsmith_index_u32(var_0.e << (u_input.a % 32u), 19u)]), 160f, _wgslsmith_div_vec2_i32(abs(vec2<i32>(global2.c.x, func_1().a.x)), countOneBits(vec2<i32>(~var_0.c.x, global2.c.x))), firstTrailingBit(var_0.d), _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 51212u), 1u));
    var_1 = Struct_2(abs(var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, _wgslsmith_sub_vec2_i32(~global2.c, ~(~vec2<i32>(0i, 2147483647i))), var_0.d.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.b, global4.x, 1000f), vec3<f32>(global4.x, 792f, global2.b), false))), vec3<f32>(global1.x, 1489f, -429f))), vec3<f32>(_wgslsmith_f_op_f32(sign(global2.b)), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -229f)))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)))));
}

