struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1107f);

var<private> global1: vec4<i32> = vec4<i32>(12469i, 0i, i32(-2147483648), i32(-2147483648));

var<private> global2: Struct_4 = Struct_4(Struct_2(vec4<f32>(-332f, -1347f, 477f, -595f)), Struct_1(2306f), vec2<i32>(-34007i, -64116i), Struct_2(vec4<f32>(-139f, 1996f, -568f, -1144f)));

var<private> global3: vec4<u32> = vec4<u32>(42386u, 17157u, 1u, 80402u);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_4) -> vec3<bool> {
    global3 = ~vec4<u32>(~_wgslsmith_add_u32(~global3.x, global3.x), ~u_input.c.x, global3.x, min(abs(30358u), abs(~46827u)));
    global3 = vec4<u32>(global3.x, 2049u, _wgslsmith_div_u32(4294967295u ^ u_input.c.x, ~(~u_input.c.x)) & 1u, ~(~abs(~u_input.c.x)));
    let var_0 = arg_1.wzx;
    var var_1 = true;
    let var_2 = !vec3<bool>(all(vec3<bool>(all(vec4<bool>(false, true, false, false)), true, true)), 2147483647i >= (-global2.c.x >> (42001u % 32u)), !(_wgslsmith_f_op_f32(sign(global0.a)) >= 1000f));
    return var_2;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(145f);
    var var_1 = all(select(!select(vec3<bool>(true, true, true), func_3(Struct_4(global2.d, Struct_1(1378f), vec2<i32>(-37209i, -2147483647i), Struct_2(vec4<f32>(global0.a, 407f, var_0.a, 756f))), global2.d.a, Struct_4(global2.a, Struct_1(-708f), vec2<i32>(global2.c.x, u_input.a.x), Struct_2(global2.a.a))), global0.a <= global2.a.a.x), vec3<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), true), !vec3<bool>(var_0.a < 197f, any(vec3<bool>(false, false, true)), any(vec2<bool>(true, true)))));
    var var_2 = -2147483647i;
    let var_3 = Struct_3(u_input.b.x);
    var var_4 = select(!select(func_3(Struct_4(global2.a, global2.b, global2.c, global2.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 1107f, 1511f, 607f)), Struct_4(global2.a, Struct_1(var_0.a), vec2<i32>(u_input.b.x, global1.x), Struct_2(vec4<f32>(125f, global0.a, -451f, 1209f)))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, any(vec3<bool>(true, true, false)), global2.b.a <= global2.d.a.x)), vec3<bool>(any(vec3<bool>(true, true, true)), true, true && !(global3.x >= 36269u)), select(vec3<bool>(_wgslsmith_f_op_f32(round(global2.a.a.x)) != _wgslsmith_f_op_f32(floor(global0.a)), false, any(vec4<bool>(true, false, true, true)) & any(vec3<bool>(true, false, false))), vec3<bool>(true, true, !any(vec4<bool>(true, true, true, true))), true));
    return Struct_1(global2.a.a.x);
}

fn func_1() -> Struct_4 {
    var var_0 = -11453i;
    var var_1 = global2.d.a.x;
    global2 = Struct_4(global2.d, func_2(), countOneBits(vec2<i32>(-23204i, 43643i)) & ~(-(global2.c ^ global2.c)), global2.a);
    var var_2 = Struct_3(5109i);
    var_2 = Struct_3(u_input.a.x);
    return Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.a.a.x, -283f, global0.a, -2325f), _wgslsmith_f_op_vec4_f32(global2.a.a - global2.a.a)))), global2.b, u_input.b.yy, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-780f, global0.a))), -338f, global2.a.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(369f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = firstTrailingBit(~vec4<u32>(reverseBits(global3.x), 1u, 1u, min(global3.x, 41169u)) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(115906u, 1u, 4294967295u, global3.x), ~vec4<u32>(u_input.c.x, global3.x, global3.x, global3.x)));
    let var_0 = -global2.c.x;
    var var_1 = func_1();
    global2 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 574f, 1139f, var_1.b.a)) + vec4<f32>(236f, global2.d.a.x, global2.b.a, var_1.d.a.x))))), global2.b, _wgslsmith_sub_vec2_i32(abs(global2.c) & firstLeadingBit(~global1.zz), -global1.xz), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.d.a.x)) * _wgslsmith_f_op_f32(-global2.a.a.x)), -956f, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a)))));
    let var_2 = !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), true), !any(vec3<bool>(true, true, true)));
    let var_3 = (~vec3<u32>(~0u, global3.x & 102334u, 0u) & ~firstTrailingBit(~vec3<u32>(global3.x, u_input.c.x, 1u))) | select(global3.zyx, ~max(~vec3<u32>(4294967295u, u_input.c.x, global3.x), ~global3.yxw), var_2.wzx);
    var var_4 = Struct_2(global2.a.a);
    var var_5 = func_1().d;
    var var_6 = ~(~((~vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_3.x) << (min(vec4<u32>(u_input.c.x, var_3.x, 59169u, u_input.c.x), vec4<u32>(0u, global3.x, global3.x, global3.x)) % vec4<u32>(32u))) ^ vec4<u32>(~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(59781u, 68801u, 24943u), global3.xxx), select(39506u, u_input.c.x, true), _wgslsmith_mod_u32(var_3.x, 6097u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(-1i) * -vec4<i32>(var_1.c.x, var_1.c.x, 1i, -30972i)), -1000f, var_3.x, var_0, ~max(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(100458u, var_6.x, 22863u)), vec3<u32>(19081u, u_input.c.x, 1u)), vec3<u32>(31121u, var_6.x ^ u_input.c.x, ~24468u)));
}

