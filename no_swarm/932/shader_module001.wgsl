struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: vec4<i32> = vec4<i32>(-39517i, 7842i, 51947i, 1i);

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: vec4<i32> = vec4<i32>(14338i, i32(-2147483648), -24175i, 1i);

var<private> global4: vec2<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<i32>) -> bool {
    let var_0 = arg_1.zy;
    global0 = array<u32, 16>();
    return arg_1.x;
}

fn func_2() -> Struct_3 {
    var var_0 = select(vec4<bool>(global2.x, func_3(select(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65089u, 16u)], 16u)], 0u, 105463u, 4294967295u), ~u_input.b, global2.x), vec3<bool>(global2.x, global2.x, global2.x), global4.x, ~select(vec4<i32>(-2147483647i, global1.x, global1.x, global1.x), vec4<i32>(global3.x, 1231i, global1.x, global1.x), vec4<bool>(false, false, global2.x, true))), false, any(global2.yx)), vec4<bool>(true, any(select(!vec3<bool>(global2.x, true, true), vec3<bool>(global2.x, global2.x, true), !global2.x)), global2.x, global2.x), select(!select(vec4<bool>(false, global2.x, false, global2.x), !vec4<bool>(global2.x, global2.x, false, true), !vec4<bool>(false, global2.x, global2.x, global2.x)), vec4<bool>(true, all(!vec3<bool>(global2.x, false, false)), global2.x, false), true));
    global0 = array<u32, 16>();
    var var_1 = Struct_5(Struct_2(vec4<bool>(all(vec3<bool>(global2.x, false, global2.x)), all(var_0.wx), false, !(var_0.x | global2.x)), Struct_1(func_3(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], 4294967295u, 4294967295u, 29563u), vec3<bool>(true, true, var_0.x), _wgslsmith_f_op_f32(-global4.x), vec4<i32>(2147483647i, global1.x, 1i, -4529i)), 920f, _wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, -30587i), vec2<i32>(global1.x, -1i)), min(select(vec3<u32>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec3<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 34266u, u_input.b.x), var_0.wwy), u_input.b.yzz)), vec2<f32>(_wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_f_op_f32(ceil(global4.x))), !global2.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(446f, 1730f, 498f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global4.x, global4.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global4.x, 366f), _wgslsmith_f_op_f32(global4.x * -1070f), _wgslsmith_f_op_f32(round(420f)))))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(floor(-704f)), Struct_3(Struct_2(var_1.a.a, var_1.a.b, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, var_1.b.x))), true), Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -1260f), vec2<i32>(global3.x, var_1.a.b.c.x) ^ ~var_1.a.b.c, (vec3<u32>(1u, global0[_wgslsmith_index_u32(var_1.a.b.d.x, 16u)], u_input.b.x) ^ vec3<u32>(u_input.a, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], 16u)])) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45453u, 16u)], 16u)], 52921u, var_1.a.b.d.x), vec3<u32>(1u, 0u, 24136u)))), var_1.a.b, select(~vec2<u32>(15159u, global0[_wgslsmith_index_u32(1u, 16u)]), abs(firstTrailingBit(countOneBits(vec2<u32>(var_1.a.b.d.x, 56168u)))), vec2<bool>(false, false)), countOneBits(~global1.www & _wgslsmith_add_vec3_i32(firstTrailingBit(global1.wwx), global3.zzz)));
    var var_3 = firstTrailingBit(u_input.b.wx & select(vec2<u32>(var_1.a.b.d.x, global0[_wgslsmith_index_u32(25367u, 16u)]) << (_wgslsmith_clamp_vec2_u32(var_2.b.a.b.d.xz, vec2<u32>(42951u, var_2.b.a.b.d.x), vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), countOneBits(abs(vec2<u32>(1u, var_1.a.b.d.x))), global2.x));
    return var_2.b;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: f32, arg_3: Struct_4) -> vec2<bool> {
    global3 = select(countOneBits(_wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, -988i, global3.x, global1.x), vec4<i32>(-45679i, 0i, arg_3.e.x, -1299i)), reverseBits(vec4<i32>(24380i, global3.x, 21343i, -2147483647i) << (u_input.b % vec4<u32>(32u))))), ~countOneBits(max(vec4<i32>(global3.x, arg_1.c.c.x, 1731i, 22611i), vec4<i32>(1i, 1i, 2147483647i, 2147483647i))), vec4<bool>(false, arg_1.c.a, func_3(min(vec4<u32>(4294967295u, arg_3.d.x, arg_3.b.b.d.x, arg_1.c.d.x), u_input.b), select(arg_3.b.a.a.zxy, vec3<bool>(false, global2.x, arg_1.c.a), true), _wgslsmith_f_op_f32(-arg_2), -vec4<i32>(2147483647i, global3.x, arg_1.c.c.x, 14649i)) & false, all(select(select(vec2<bool>(global2.x, global2.x), vec2<bool>(true, true), true), global2.zy, arg_3.b.a.a.zy))));
    var var_0 = _wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_add_vec4_u32(select(vec4<u32>(~arg_3.c.d.x, ~4294967295u, 1u, firstTrailingBit(u_input.b.x)), reverseBits(u_input.b), arg_3.b.a.b.a), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, ~global0[_wgslsmith_index_u32(0u, 16u)], ~0u, 31595u), abs(abs(u_input.b)))));
    let var_1 = ~_wgslsmith_sub_u32(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(~4294967295u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4200u, 16u)], 16u)])), 16u)], 16u)]);
    let var_2 = 1u;
    var var_3 = func_2();
    return !(!arg_1.b.a.a.xy);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32) -> vec4<i32> {
    global2 = !(!(!arg_1.a.a.zzw));
    global3 = arg_0;
    var var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-933f))), _wgslsmith_f_op_f32(trunc(arg_1.a.b.b)), _wgslsmith_f_op_f32(min(992f, _wgslsmith_f_op_f32(875f - -552f))), 927f), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -380f), func_2(), func_2().b, _wgslsmith_add_vec2_u32(min(u_input.b.yw, arg_1.a.b.d.xx), _wgslsmith_clamp_vec2_u32(select(u_input.b.yz, arg_1.a.b.d.xz, true), arg_1.b.d.zz, arg_1.b.d.zz)), _wgslsmith_div_vec3_i32(~abs(global1.xzw), arg_0.zxy)), 495f, Struct_4(155f, arg_1, Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a.b.b))), vec2<i32>(-1i) * -arg_1.a.b.c, ~vec3<u32>(2023u, 14547u, 0u)), vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(arg_2, arg_1.b.d.x, 32522u)), arg_1.a.b.d), _wgslsmith_clamp_u32(~arg_1.a.b.d.x, 0u, arg_2)), global1.wxx));
    let var_1 = Struct_2(select(!func_2().a.a, func_2().a.a, true), arg_1.b, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.b.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(919f)), _wgslsmith_f_op_f32(f32(-1f) * -273f))))), all(arg_1.a.a));
    let var_2 = global0[_wgslsmith_index_u32(~(~63074u), 16u)];
    return ~arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(func_1(vec4<i32>(global3.x, 6938i, 58123i, global3.x), Struct_3(Struct_2(vec4<bool>(global2.x, true, global2.x, global2.x), Struct_1(true, global4.x, vec2<i32>(2147483647i, global3.x), vec3<u32>(0u, 0u, global0[_wgslsmith_index_u32(u_input.a, 16u)])), vec2<f32>(global4.x, -559f), false), Struct_1(false, 436f, global3.zx, vec3<u32>(u_input.a, 4294967295u, 1u))), 17962u), firstLeadingBit(vec4<i32>(global3.x, 49011i, global3.x, -2147483647i)), vec4<i32>(global1.x, 16929i, 34061i, -73486i)), _wgslsmith_div_vec4_i32(vec4<i32>(global3.x, global3.x, global3.x, -67016i) >> (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], 16u)], 16u)], 4294967295u, u_input.b.x, 10869u) % vec4<u32>(32u)), abs(vec4<i32>(global1.x, 1i, global1.x, global1.x))))), vec4<i32>(-6671i, -1i, 1i | global1.x, i32(-1i) * -40215i) & reverseBits(~firstTrailingBit(vec4<i32>(global3.x, global3.x, global1.x, global3.x))));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-109f * -2262f), _wgslsmith_f_op_f32(f32(-1f) * -866f));
    var var_1 = Struct_3(func_2().a, func_2().b);
    global0 = array<u32, 16>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(var_0 * -160f)), vec4<f32>(_wgslsmith_div_f32(var_0, global4.x), global4.x, _wgslsmith_div_f32(388f, -203f), -1233f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2446f, -1059f, 1356f, -2044f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1378f, var_1.b.b, var_0) * vec4<f32>(489f, var_1.a.c.x, -1437f, var_1.b.b)))))));
    var var_3 = Struct_4(var_0, Struct_3(func_2().a, func_2().a.b), func_2().b, vec2<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(u_input.b.xyy), _wgslsmith_div_vec3_u32(var_1.b.d, var_1.a.b.d)), vec3<u32>(u_input.b.x, ~7182u, ~1u))), ~global3.xxw);
    let var_4 = _wgslsmith_mult_u32(abs(select(var_1.a.b.d.x, ~(~var_1.b.d.x), func_2().b.a)), select(~_wgslsmith_add_u32(var_1.b.d.x, select(var_3.b.a.b.d.x, var_1.a.b.d.x, false)), (~var_3.d.x << (1u % 32u)) >> (global0[_wgslsmith_index_u32(var_3.d.x & (var_3.c.d.x ^ var_3.d.x), 16u)] % 32u), true));
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_4, (var_3.b.b.c.x << (var_3.d.x % 32u)) | 8624i, var_3.b.b.c, ~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(var_4, var_1.b.d.x)), ~func_2().a.b.d.zz));
}

