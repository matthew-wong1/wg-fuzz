struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(0u, 1u, 38273u), vec3<u32>(4294967295u, 46546u, 35298u), vec3<u32>(1u, 59030u, 2335u), vec3<u32>(52460u, 0u, 37651u), vec3<u32>(4294967295u, 72034u, 0u), vec3<u32>(1u, 21125u, 98092u), vec3<u32>(28786u, 11365u, 94768u), vec3<u32>(0u, 1u, 24680u), vec3<u32>(19108u, 4294967295u, 3178u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 1u, 1u), vec3<u32>(14439u, 43958u, 67417u), vec3<u32>(12859u, 1u, 13912u), vec3<u32>(0u, 27264u, 1u), vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 10916u), vec3<u32>(5945u, 1u, 1u), vec3<u32>(1u, 0u, 1u), vec3<u32>(0u, 1u, 1u), vec3<u32>(974u, 46860u, 83343u), vec3<u32>(85327u, 1u, 102395u), vec3<u32>(17599u, 0u, 14432u), vec3<u32>(753u, 10934u, 0u), vec3<u32>(74289u, 20935u, 4294967295u), vec3<u32>(36651u, 1u, 54363u));

var<private> global2: Struct_2 = Struct_2(false, Struct_1(false, vec4<i32>(2147483647i, 1i, 12233i, -19453i), true, vec4<i32>(3905i, -395i, 0i, 2147483647i)), Struct_1(false, vec4<i32>(-37345i, 1i, 1i, 2147483647i), true, vec4<i32>(0i, 0i, -14281i, 0i)), Struct_1(true, vec4<i32>(i32(-2147483648), -1i, -32195i, 1262i), true, vec4<i32>(-7570i, 0i, 0i, -44718i)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<i32>) -> vec3<bool> {
    var var_0 = Struct_2(true, global2.c, Struct_1(u_input.a.x >= arg_0.x, abs(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(arg_0, vec4<i32>(-2147483647i, -15851i, global2.d.b.x, -2147483647i)), arg_0)), global2.b.a, arg_0), global2.d);
    let var_1 = var_0.d.b.xx >> ((_wgslsmith_mod_vec2_u32(u_input.c.xx, abs(~vec2<u32>(0u, 0u))) << (~u_input.c.xx % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_2 = u_input.b;
    let var_3 = Struct_2(true, var_0.b, global2.b, Struct_1(global2.c.a, global2.b.d, all(vec3<bool>(true, false, true)), var_0.c.d));
    var var_4 = vec3<i32>(1i, -select(var_3.c.d.x, _wgslsmith_dot_vec2_i32(arg_0.yy, -arg_0.wy), true), _wgslsmith_mult_i32(3445i, min(abs(_wgslsmith_dot_vec4_i32(var_3.d.b, var_3.c.d)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-12296i, 2147483647i), var_1))));
    return vec3<bool>(true, any(select(select(vec2<bool>(false, true), !vec2<bool>(global2.c.c, global2.d.a), vec2<bool>(true, false)), select(select(vec2<bool>(true, false), vec2<bool>(global2.a, var_0.d.a), vec2<bool>(true, var_0.d.a)), vec2<bool>(global2.c.a, var_3.d.a), var_0.b.a), !vec2<bool>(var_3.d.c, true))), true);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-744f * _wgslsmith_f_op_f32(step(arg_2.x, arg_2.x))), _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_div_f32(820f, 1082f)), 1667f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 1191f, arg_2.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -821f, arg_2.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -730f, arg_2.x) - vec3<f32>(-790f, 188f, arg_2.x))))) - vec3<f32>(-181f, arg_2.x, arg_2.x));
    let var_1 = arg_1.d;
    global1 = array<vec3<u32>, 26>();
    global2 = arg_1;
    var var_2 = Struct_1(false, _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(global2.d.d, ~var_1.d), var_1.d ^ vec4<i32>(_wgslsmith_add_i32(u_input.a.x, 0i), -54668i, -2147483647i, -2147483647i)), select(true, !select(true, true, true), false), -vec4<i32>(~global2.b.b.x, ~_wgslsmith_div_i32(29859i, -1i), -reverseBits(29867i), arg_3.b.x));
    return select(vec3<bool>(true, true, true), vec3<bool>(arg_1.c.a, u_input.c.x <= ~(~21494u), global2.b.b.x == min(~var_2.b.x, _wgslsmith_clamp_i32(-4021i, 2147483647i, -1i))), func_2(abs(vec4<i32>(-1i, 76154i, global0[_wgslsmith_index_u32(1470u, 2u)], arg_3.d.x)) << (firstTrailingBit(max(u_input.c, u_input.c)) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = global2.d.b.x;
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    let var_1 = vec4<bool>(global2.a, all(vec4<bool>(global2.d.a && (global2.b.c & false), global2.c.a, any(vec3<bool>(true, true, true)), all(arg_0))), all(vec2<bool>(arg_0.x, true)), all(select(!func_2(global2.c.b), func_3(reverseBits(108617u), Struct_2(global2.d.c, Struct_1(false, vec4<i32>(31227i, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], 30012i, 0i), arg_0.x, global2.c.b), Struct_1(arg_0.x, global2.c.d, arg_0.x, vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], 2147483647i, 2147483647i, global0[_wgslsmith_index_u32(1u, 2u)])), Struct_1(global2.c.c, global2.c.d, true, global2.b.b)), vec2<f32>(-1253f, 375f), global2.b), vec3<bool>(!global2.a, arg_0.x, false))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1694f);
    return global2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(abs(~(~global2.d.b.zwz)), ~vec3<i32>(~(-43985i), 1i, max(46105i, global2.d.d.x)) >> (vec3<u32>(_wgslsmith_div_u32(abs(u_input.b), ~60909u), 1u, u_input.b) % vec3<u32>(32u)));
    let var_1 = Struct_2(global2.a, Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(u_input.c.x, 10755u)), 37712u | u_input.c.x) != u_input.c.x, _wgslsmith_mod_vec4_i32(-(global2.c.d ^ vec4<i32>(global0[_wgslsmith_index_u32(23119u, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)], var_0, 0i)), ~vec4<i32>(global2.b.b.x, var_0, 1i, u_input.a.x)), (firstTrailingBit(36718u) | u_input.b) <= 34935u, global2.d.b), func_1(vec2<bool>(true, true != any(vec3<bool>(true, false, global2.c.c)))), Struct_1(all(!vec2<bool>(false, global2.d.a)) == false, vec4<i32>(global2.d.d.x, func_1(func_3(1u, Struct_2(global2.d.c, Struct_1(false, global2.c.d, true, global2.c.b), Struct_1(true, global2.c.b, global2.b.c, global2.c.d), global2.b), vec2<f32>(964f, -248f), global2.d).xy).b.x, 21249i, 974i), 1f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 466f, global2.a))), -_wgslsmith_mod_vec4_i32(global2.c.b & vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], u_input.a.x, 0i, 17820i), global2.d.d)));
    var var_2 = u_input.b;
    var var_3 = func_1(select(vec2<bool>(true, true), vec2<bool>(all(func_3(4294967295u, var_1, vec2<f32>(1334f, -757f), Struct_1(true, vec4<i32>(-17028i, 7985i, 26399i, global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), false, global2.b.b))), all(vec4<bool>(false, var_1.b.a, var_1.d.c, var_1.d.c))), !(!(!vec2<bool>(var_1.c.a, var_1.d.c)))));
    global2 = var_1;
    var_2 = ~(max(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), vec3<u32>(84659u, u_input.b, u_input.c.x)), ~84858u), 4294967295u ^ ~u_input.c.x) & u_input.c.x);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -199f);
    var var_5 = -774f;
    var var_6 = vec2<bool>(true, false);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(func_1(func_2(-vec4<i32>(-2147483647i, 32868i, var_1.d.d.x, global2.d.d.x)).xx).d.zz), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -222f))))));
}

