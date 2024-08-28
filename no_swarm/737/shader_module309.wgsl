struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false));

var<private> global1: i32 = 0i;

var<private> global2: Struct_3;

var<private> global3: vec2<u32>;

var<private> global4: vec3<u32> = vec3<u32>(4294967295u, 1u, 0u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    global3 = ~global4.xx;
    let var_0 = arg_0.d.wyy;
    let var_1 = Struct_3(Struct_2(arg_1.b, firstTrailingBit(arg_1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_1.c)))), _wgslsmith_f_op_f32(-arg_1.c)), !select(!vec4<bool>(global2.a.d.x, false, false, true), vec4<bool>(arg_0.d.x, var_0.x, arg_1.d.x, false), arg_0.d.x | false)));
    global1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(~u_input.a.x, _wgslsmith_add_i32(select(6176i, 45917i, arg_1.d.x), -2147483647i)), -2147483647i);
    let var_2 = ~max(_wgslsmith_sub_u32(_wgslsmith_div_u32(43781u, _wgslsmith_sub_u32(24122u, 0u)), var_1.a.b.x), ~(1u ^ _wgslsmith_add_u32(global4.x, arg_0.a.x)));
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> vec2<u32> {
    var var_0 = !global0[_wgslsmith_index_u32(18363u, 23u)];
    let var_1 = Struct_3(Struct_2(u_input.c, ~(~arg_2.yw) & (global4.xz ^ ~global4.yy), _wgslsmith_f_op_f32(abs(1623f)), !vec4<bool>(true, global2.a.d.x, true, arg_1.d)));
    let var_2 = !var_0.xz;
    global0 = array<vec4<bool>, 23>();
    let var_3 = -firstTrailingBit(abs(select(-u_input.a, abs(vec2<i32>(-32186i, 17276i)), vec2<bool>(global2.a.d.x, arg_0.d))));
    return vec2<u32>(4294967295u ^ select(max(1u, ~arg_2.x), arg_2.x, all(!var_0.wyz)), ~31402u);
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = ~u_input.a.x;
    var var_1 = Struct_2(countOneBits(vec2<u32>(0u, global2.a.b.x) | vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 33462u, 0u, u_input.c.x), vec4<u32>(56594u, u_input.c.x, 40585u, 4294967295u)), u_input.c.x)), u_input.c, global2.a.c, vec4<bool>(!(!any(vec2<bool>(false, true))), !(_wgslsmith_f_op_f32(f32(-1f) * -1092f) >= _wgslsmith_f_op_f32(-global2.a.c)), true, all(global2.a.d.www)));
    let var_2 = vec2<bool>(var_1.d.x, false);
    var var_3 = var_1.c;
    let var_4 = 16920u;
    return Struct_3(Struct_2(func_4(Struct_1(all(var_1.d), _wgslsmith_div_i32(u_input.a.x, u_input.b), ~global4.x, false, -49334i), Struct_1(var_2.x | true, -2147483647i | u_input.b, global3.x & 1u, all(vec2<bool>(true, false)), 1i), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, 16876u, 31862u, 72740u), vec4<u32>(0u, 13404u, 17726u, var_1.a.x)), 56565u, u_input.c.x, func_3(global2.a, Struct_2(global4.xy, var_1.b, global2.a.c, global0[_wgslsmith_index_u32(62998u, 23u)]))), 67892u), ~global4.zx, -449f, vec4<bool>(false, all(!arg_0), false, true)));
}

fn func_5(arg_0: Struct_3) -> vec4<u32> {
    global2 = func_2(!global2.a.d.xxy);
    let var_0 = global2.a.d;
    global0 = array<vec4<bool>, 23>();
    global4 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, global3.x), vec3<u32>(1u, 77337u, arg_0.a.a.x)), u_input.c.x, ~global2.a.b.x), ~reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, global2.a.a.x, 10317u), vec3<u32>(global3.x, global3.x, 0u)))), firstTrailingBit(abs(~vec3<u32>(4294967295u, u_input.c.x, 45805u))));
    let var_1 = vec3<f32>(1321f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-1071f, -1643f, true))) - _wgslsmith_f_op_f32(global2.a.c + _wgslsmith_f_op_f32(global2.a.c + 640f))))), 944f);
    return _wgslsmith_add_vec4_u32(~(~(~(vec4<u32>(4294967295u, 49348u, global4.x, global3.x) | vec4<u32>(global4.x, 39434u, 4294967295u, arg_0.a.b.x)))), vec4<u32>(~13377u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, 73393u), abs(global2.a.b.x)), func_4(Struct_1(u_input.c.x <= global4.x, -18503i, 1u, true, u_input.b), Struct_1(true, -4233i, u_input.c.x, var_0.x, u_input.a.x), select(firstTrailingBit(vec4<u32>(1u, arg_0.a.b.x, global4.x, 19891u)), _wgslsmith_add_vec4_u32(vec4<u32>(global3.x, u_input.c.x, 68898u, 8519u), vec4<u32>(global4.x, global4.x, 38391u, global2.a.b.x)), !global2.a.d.x), u_input.c.x).x, 1u));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = vec3<i32>(firstTrailingBit(34767i), _wgslsmith_sub_i32(i32(-1i) * -firstTrailingBit(-14917i), arg_0), -arg_0 ^ ~1i);
    var var_1 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_2.b.x, 44856u << (1u % 32u), u_input.c.x, firstTrailingBit(arg_2.b.x))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global2.a.b.x, 0u, arg_2.a.x, 0u) >> (abs(vec4<u32>(global2.a.b.x, 47322u, 11453u, 56388u)) % vec4<u32>(32u)), func_5(func_2(global2.a.d.yww))));
    var var_2 = true;
    var_2 = true;
    let var_3 = !all(vec4<bool>(!(global2.a.c == arg_2.c), all(vec4<bool>(false, true, arg_2.d.x, arg_2.d.x)), false, all(vec3<bool>(false, false, arg_2.d.x))));
    return vec3<f32>(-680f, _wgslsmith_f_op_f32(trunc(arg_2.c)), arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_dot_vec3_i32(abs(min(abs(vec3<i32>(u_input.b, -6532i, 1i)), ~(-vec3<i32>(1i, u_input.a.x, u_input.a.x)))), vec3<i32>(max(-_wgslsmith_add_i32(u_input.a.x, u_input.a.x), _wgslsmith_div_i32(u_input.b, ~(-27841i))), ~(-_wgslsmith_sub_i32(-3737i, u_input.b)), u_input.a.x));
    var var_0 = select(_wgslsmith_sub_vec2_u32(vec2<u32>(~global2.a.b.x, 13034u), vec2<u32>(0u, global4.x >> (global3.x % 32u)) >> (vec2<u32>(~120023u, ~29826u) % vec2<u32>(32u))), ~(~(~countOneBits(global4.yz))), all(global2.a.d));
    let var_1 = global2.a.d;
    var var_2 = global2.a.c;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(floor(global2.a.c)), global2.a.c, global2.a.c);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_1(~u_input.b, vec3<bool>(global2.a.d.x, false, var_1.x), global2.a)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-237f, global2.a.c, 2459f))))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-1000f * -129f), global2.a.c), vec3<f32>(-1427f, _wgslsmith_f_op_f32(global2.a.c - _wgslsmith_f_op_f32(f32(-1f) * -179f)), var_3.x), !(!select(global2.a.d.xxw, global2.a.d.xwz, vec3<bool>(false, var_1.x, var_1.x))))));
    global0 = array<vec4<bool>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), u_input.b, u_input.a.x) << (~vec3<u32>(_wgslsmith_div_u32(u_input.c.x, global3.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.a.x, u_input.c.x, global3.x, 0u), vec4<u32>(global4.x, 4294967295u, 22900u, 0u)), 100734u) % vec3<u32>(32u)), ~_wgslsmith_mod_vec2_u32(firstTrailingBit(~u_input.c), vec2<u32>(0u, ~1u)));
}

