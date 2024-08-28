struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17>;

var<private> global1: array<Struct_5, 31>;

var<private> global2: Struct_4 = Struct_4(Struct_2(Struct_1(2864u, 13794u), vec3<bool>(false, false, true), vec4<u32>(4294967295u, 23879u, 1u, 10778u), -1402f));

var<private> global3: i32 = 4502i;

var<private> global4: array<f32, 20>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_3(Struct_2(Struct_1(0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.d), vec2<u32>(27799u, 20244u))), vec3<bool>(true, !global2.a.b.x, all(select(global2.a.b.zx, vec2<bool>(true, global2.a.b.x), global2.a.b.x))), countOneBits(max(select(vec4<u32>(4294967295u, global2.a.c.x, u_input.a, global2.a.a.a), global2.a.c, true), ~global2.a.c)), 1f), vec3<i32>(~u_input.b, firstLeadingBit(u_input.b), _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(2147483647i, u_input.b, 1i, -1i)), _wgslsmith_div_vec4_i32(-vec4<i32>(7994i, u_input.b, u_input.b, -63978i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)))));
    let var_1 = select(var_0.a.b.xz, select(!(!select(global2.a.b.zy, vec2<bool>(var_0.a.b.x, true), var_0.a.b.yx)), vec2<bool>(false, u_input.c <= 37013u), var_0.a.b.zy), true);
    var var_2 = Struct_3(var_0.a, var_0.b << (vec3<u32>(u_input.d, ~0u, _wgslsmith_sub_u32(~var_0.a.a.b, 0u)) % vec3<u32>(32u)));
    global4 = array<f32, 20>();
    global3 = 21052i;
    return -(_wgslsmith_sub_vec3_i32(var_0.b, _wgslsmith_mod_vec3_i32(var_2.b | vec3<i32>(6072i, -13155i, 22740i), var_0.b)) ^ (vec3<i32>(var_2.b.x, _wgslsmith_mod_i32(var_0.b.x, u_input.b), 5037i) << (var_2.a.c.wyx % vec3<u32>(32u))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: bool) -> Struct_4 {
    let var_0 = -1000f;
    let var_1 = Struct_3(Struct_2(Struct_1(u_input.c, 71071u), global2.a.b, firstTrailingBit(global2.a.c & vec4<u32>(global2.a.a.b, u_input.c, u_input.a, 8292u)) ^ ~global2.a.c, global2.a.d), func_3());
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.a.c.x, ~9336u), 31u)];
    var var_3 = any(select(select(select(select(vec3<bool>(false, true, arg_2), global2.a.b, var_1.a.b), select(vec3<bool>(arg_2, true, global2.a.b.x), global2.a.b, vec3<bool>(arg_2, var_1.a.b.x, var_1.a.b.x)), select(vec3<bool>(global2.a.b.x, var_1.a.b.x, true), vec3<bool>(true, true, global2.a.b.x), false)), !global2.a.b, global2.a.b.x | all(vec2<bool>(global2.a.b.x, true))), vec3<bool>(all(var_1.a.b) && true, any(!global2.a.b.xx), select(true, global2.a.b.x, true)), global2.a.b.x));
    let var_4 = global1[_wgslsmith_index_u32(4294967295u, 31u)];
    return Struct_4(Struct_2(Struct_1(global2.a.c.x, ~0u), vec3<bool>(var_1.b.x >= u_input.b, arg_2 || false, arg_2), vec4<u32>(global2.a.a.b, 1u, global2.a.a.a ^ global2.a.a.a, 7861u) >> (var_1.a.c % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1758f)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1552f, _wgslsmith_f_op_f32(f32(-1f) * -1077f)));
    global3 = u_input.b;
    global0 = array<vec4<bool>, 17>();
    global3 = abs(u_input.b);
    global0 = array<vec4<bool>, 17>();
    return ~(~(_wgslsmith_mult_u32(58922u, arg_1.a.a.a) & countOneBits(1u))) < 1u;
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(func_2(0i, 0u, select(global2.a.b.x, true, false)).a, ~countOneBits(max(vec3<i32>(-35086i, u_input.b, 14613i), ~vec3<i32>(u_input.b, 17545i, u_input.b))));
    let var_1 = var_0.a.a;
    let var_2 = arg_1;
    var_0 = Struct_3(global2.a, _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 5792i, -36622i), vec3<i32>(-3350i, u_input.b, 2147483647i)), ~vec3<i32>(u_input.b, 0i, u_input.b) | min(vec3<i32>(var_0.b.x, u_input.b, var_0.b.x), vec3<i32>(var_0.b.x, 5423i, 1i))), select(vec3<i32>(~var_0.b.x, -1i, _wgslsmith_dot_vec2_i32(var_0.b.xy, var_0.b.xx)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(var_0.b, var_0.b), ~var_0.b), func_2(~u_input.b, min(global2.a.c.x, global2.a.c.x), !arg_1.x).a.b)));
    global3 = abs(i32(-1i) * -2147483647i);
    return global2.a;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: u32) -> vec2<i32> {
    let var_0 = abs(~max(u_input.b, u_input.b));
    global1 = array<Struct_5, 31>();
    let var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1619f, _wgslsmith_f_op_f32(sign(-1747f))))), select(vec3<bool>(false, true, func_4(global2.a.c.wwz, func_2(u_input.b, 1u, false))), vec3<bool>(global2.a.b.x, !global2.a.b.x, true), !select(!global2.a.b, global2.a.b, func_2(var_0, arg_1, global2.a.b.x).a.b)), global2.a);
    let var_2 = Struct_3(var_1, _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(~(-vec3<i32>(-1i, u_input.b, var_0)), vec3<i32>(-19641i, 35702i, 2147483647i) << (~var_1.c.wzx % vec3<u32>(32u))), vec3<i32>(u_input.b, -func_3().x, -u_input.b >> (u_input.a % 32u))));
    global2 = func_2(u_input.b, 7963u, true);
    return _wgslsmith_sub_vec2_i32(var_2.b.yy, -var_2.b.yz >> (var_2.a.c.xz % vec2<u32>(32u))) >> (global2.a.c.yz % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -7966i), reverseBits(vec2<i32>(0i, 1i))), vec2<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.b, -28884i), _wgslsmith_div_i32(u_input.b, u_input.b)), func_1(global2.a.d, 57257u, 32840u) | firstTrailingBit(vec2<i32>(u_input.b, u_input.b))), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(-1i, 4078i)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(global2.a.c.zw, global2.a.c.yw)) % vec2<u32>(32u))), global4[_wgslsmith_index_u32(~u_input.a, 20u)], _wgslsmith_sub_u32(abs(~4294967295u) >> (u_input.c % 32u), u_input.c), _wgslsmith_f_op_f32(min(-389f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.d))))));
}

