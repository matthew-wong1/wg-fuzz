struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7>;

var<private> global1: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 46672u, 74390u), vec3<u32>(30502u, 0u, 3629u), vec3<u32>(43367u, 11742u, 0u), vec3<u32>(73000u, 1u, 4294967295u), vec3<u32>(94963u, 97219u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 25908u, 59670u), vec3<u32>(42604u, 4294967295u, 4294967295u), vec3<u32>(5964u, 0u, 1u), vec3<u32>(62255u, 63867u, 0u), vec3<u32>(61334u, 16559u, 47337u), vec3<u32>(6500u, 3406u, 0u), vec3<u32>(4294967295u, 0u, 41889u), vec3<u32>(22807u, 76016u, 55978u), vec3<u32>(22153u, 20695u, 62999u), vec3<u32>(1u, 1u, 8219u), vec3<u32>(552u, 4294967295u, 0u));

var<private> global2: array<bool, 10>;

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> bool {
    global3 = Struct_1(-759f, ~(-_wgslsmith_mult_vec3_i32(global3.b, global3.b)) >> (~(~abs(global1[_wgslsmith_index_u32(u_input.b.x, 18u)])) % vec3<u32>(32u)), _wgslsmith_mult_i32(min(15300i, -1i), i32(-1i) * -1i), arg_0.d);
    let var_0 = arg_0;
    global2 = array<bool, 10>();
    let var_1 = -firstTrailingBit(-select(31818i, ~(-5517i), arg_1.x & true));
    global0 = array<vec2<f32>, 7>();
    return arg_1.x;
}

fn func_2() -> vec2<bool> {
    var var_0 = select(vec4<i32>(_wgslsmith_sub_i32(~(i32(-1i) * -2147483647i), global3.b.x), 1i, -2147483647i, -13646i), reverseBits(vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, global3.c), _wgslsmith_sub_vec2_i32(vec2<i32>(-7792i, 47347i), vec2<i32>(-1i, 0i))), global3.c, -abs(global3.c))), u_input.c <= ~_wgslsmith_mult_u32(0u, u_input.b.x));
    var var_1 = 741f;
    global2 = array<bool, 10>();
    global2 = array<bool, 10>();
    let var_2 = _wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_mod_vec3_u32(~max(global1[_wgslsmith_index_u32(~u_input.c, 18u)], ~vec3<u32>(u_input.a, u_input.b.x, u_input.b.x)), vec3<u32>(~45689u, 1u, max(0u, u_input.c))));
    return !vec2<bool>(select(true, func_3(Struct_1(-1241f, vec3<i32>(global3.b.x, 2147483647i, global3.b.x), -1i, 0i), !vec2<bool>(global2[_wgslsmith_index_u32(76358u, 10u)], true)), true), !select(any(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 10u)])), !global2[_wgslsmith_index_u32(var_2, 10u)], false && global2[_wgslsmith_index_u32(4294967295u, 10u)]));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = max(global3.b.xx, -select(~(~global3.b.xy), global3.b.zy & vec2<i32>(global3.c, -21183i), func_2()));
    let var_1 = arg_2;
    let var_2 = var_1.x;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a - 968f)) * global3.a), global2[_wgslsmith_index_u32((4294967295u | _wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(u_input.d, 4294967295u))) & u_input.d, 10u)])), global3.b, var_0.x, global3.b.x);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(floor(204f)), global3.b, var_0.x ^ ~countOneBits(var_0.x), _wgslsmith_clamp_i32(2147483647i, max(-_wgslsmith_dot_vec2_i32(global3.b.zy, vec2<i32>(var_0.x, -8491i)), global3.d | var_3.d), global3.b.x));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_3.a, _wgslsmith_div_f32(global3.a, -918f)), 1201f))), var_3.b, -(-(var_4.c & -20250i) & global3.c), -1i);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = func_1(arg_1, select(vec3<bool>(true, arg_1, global2[_wgslsmith_index_u32(u_input.c, 10u)]), !(!vec3<bool>(arg_1, arg_1, true)), u_input.a == (u_input.c & u_input.a)), !select(vec2<bool>(select(arg_1, true, false), arg_1), vec2<bool>(arg_1, u_input.a < 4294967295u), !select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(u_input.b.x, 10u)]), vec2<bool>(true, false), vec2<bool>(false, true))));
    let var_1 = select(select(vec3<bool>(false, arg_1, true), !(!vec3<bool>(arg_1, true, true)), vec3<bool>(true, any(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 10u)], arg_1)), func_3(func_1(false, vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 10u)], true, false), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 10u)])), vec2<bool>(global2[_wgslsmith_index_u32(14376u, 10u)], false)))), !select(vec3<bool>(arg_1, var_0.b.x < 2147483647i, !arg_1), !select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 10u)], true, true), vec3<bool>(true, true, true), vec3<bool>(true, arg_1, global2[_wgslsmith_index_u32(22292u, 10u)])), vec3<bool>(true, arg_1 == true, true)), vec3<bool>(false, (firstTrailingBit(0u) >= _wgslsmith_add_u32(12884u, u_input.a)) & arg_1, true));
    let var_2 = arg_0;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-var_2.a), vec3<i32>(i32(-1i) * -2147483647i, -func_1(arg_1, var_1, vec2<bool>(false, false)).d | 30139i, -arg_0.c), ~(-942i), -(_wgslsmith_mult_i32(var_2.d, ~2147483647i) >> (u_input.b.x % 32u)));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global3.a)), _wgslsmith_f_op_f32(857f + 347f))) + _wgslsmith_f_op_f32(f32(-1f) * -1653f)), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(arg_0.b.x, -59489i, 38001i)), -vec3<i32>(arg_0.d, 1i, -2147483647i)) | vec3<i32>(arg_0.c, _wgslsmith_div_i32(var_0.b.x >> (u_input.d % 32u), -arg_0.c), i32(-1i) * -global3.b.x), _wgslsmith_mult_i32(41395i, global3.c), firstTrailingBit(279i));
    return ~_wgslsmith_sub_u32(0u, u_input.a);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(func_1(all(!vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 10u)], arg_0.x, false)) && false, !vec3<bool>(select(global2[_wgslsmith_index_u32(u_input.c, 10u)], arg_0.x, arg_0.x), true, all(vec3<bool>(true, false, true))), vec2<bool>(true, false)).a, _wgslsmith_mult_vec3_i32(vec3<i32>(-max(global3.b.x, -61767i), global3.b.x, -1i), vec3<i32>(-14249i, 15253i, countOneBits(2147483647i)) & global3.b), -1i, _wgslsmith_dot_vec2_i32(min(arg_1.zz, arg_1.zz), _wgslsmith_mod_vec2_i32(min(global3.b.yy, global3.b.xz) >> (~u_input.b.xx % vec2<u32>(32u)), abs(global3.b.xz))));
    let var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1644f), arg_1.ywx | arg_1.xxz, -19241i, -2147483647i);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-421f))), arg_1.zzw >> (~select(min(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], u_input.b), ~u_input.b, arg_0.x) % vec3<u32>(32u)), var_2.d, ~(-(global3.d ^ global3.c) & ~2147483647i));
    let var_4 = var_2.b.zx;
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(780f * -195f))))), vec3<i32>(var_2.c, ~abs(2147483647i) & func_1(!global2[_wgslsmith_index_u32(0u, 10u)], select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, true, global2[_wgslsmith_index_u32(u_input.b.x, 10u)]), false), !vec2<bool>(true, arg_0.x)).b.x, ~var_2.c), arg_1.x, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(67332i, _wgslsmith_add_i32(global3.d, 0i) ^ 43081i, global3.b.x, global3.b.x);
    global0 = array<vec2<f32>, 7>();
    let var_1 = func_5(select(vec3<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(55110u, 10u)], global2[_wgslsmith_index_u32(u_input.c, 10u)], global2[_wgslsmith_index_u32(u_input.a, 10u)])), global2[_wgslsmith_index_u32(func_4(func_1(global2[_wgslsmith_index_u32(u_input.a, 10u)], vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 10u)], true, global2[_wgslsmith_index_u32(u_input.a, 10u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 10u)])), global2[_wgslsmith_index_u32(u_input.a | u_input.c, 10u)]), 10u)], false), vec3<bool>(func_2().x, false, global2[_wgslsmith_index_u32(u_input.b.x & (13856u << (0u % 32u)), 10u)]), select(!(!vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(10055u, 10u)])), select(!vec3<bool>(global2[_wgslsmith_index_u32(30218u, 10u)], global2[_wgslsmith_index_u32(29036u, 10u)], true), !vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 10u)], false), !vec3<bool>(global2[_wgslsmith_index_u32(36968u, 10u)], global2[_wgslsmith_index_u32(60226u, 10u)], global2[_wgslsmith_index_u32(33068u, 10u)])), !(!global2[_wgslsmith_index_u32(270u, 10u)]))), var_0);
    let var_2 = true;
    var var_3 = abs(var_0);
    var_3 = abs(abs(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(var_0, var_0), vec4<i32>(_wgslsmith_mod_i32(var_1.d, 27720i), ~global3.d, reverseBits(-2147483647i), _wgslsmith_mult_i32(252i, var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(32857u << ((54482u >> (u_input.c % 32u)) % 32u), -countOneBits(var_3.zwy));
}

