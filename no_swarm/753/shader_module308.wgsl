struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 32>;

var<private> global2: vec4<i32>;

var<private> global3: array<i32, 22> = array<i32, 22>(0i, 59060i, -4560i, -695i, -2136i, -1i, 55407i, -32014i, -13505i, 0i, -39404i, 1i, 1i, -46500i, -69188i, -26386i, 34087i, 2147483647i, 0i, 12721i, 2147483647i, 17041i);

var<private> global4: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_1(true), vec4<i32>(-54559i, 1i, -4710i, 6595i), 1i, vec3<i32>(18750i, -19559i, i32(-2147483648))), Struct_3(Struct_1(false), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 1i), -4821i, vec3<i32>(2147483647i, 3432i, 10521i)), Struct_3(Struct_1(true), vec4<i32>(30787i, 1i, 20809i, 2147483647i), 1i, vec3<i32>(2058i, -43709i, -1298i)), Struct_3(Struct_1(true), vec4<i32>(5643i, -1i, 34844i, -2322i), 49392i, vec3<i32>(2147483647i, 1i, 46160i)), Struct_3(Struct_1(false), vec4<i32>(-1i, 0i, -19854i, -39087i), 1i, vec3<i32>(-20113i, -39101i, 46439i)), Struct_3(Struct_1(false), vec4<i32>(39669i, 24305i, -31346i, 2147483647i), 13269i, vec3<i32>(-1i, 1680i, -1i)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: i32) -> i32 {
    global1 = array<u32, 32>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0) != 242f;
    let var_1 = select(select(vec4<bool>(all(vec4<bool>(var_0, false, var_0, true)), -41305i <= global3[_wgslsmith_index_u32(4294967295u, 22u)], true, var_0 | false), select(select(!vec4<bool>(var_0, false, true, false), vec4<bool>(false, false, global0.a.a, var_0), vec4<bool>(var_0, global0.a.a, true, false)), !vec4<bool>(true, global0.a.a, false, var_0), true), select(!(!vec4<bool>(var_0, global0.a.a, true, false)), !vec4<bool>(var_0, true, global0.a.a, true), !vec4<bool>(false, global0.a.a, global0.a.a, false))), vec4<bool>(any(select(!vec3<bool>(global0.a.a, global0.a.a, var_0), vec3<bool>(var_0, false, global0.a.a), !vec3<bool>(var_0, global0.a.a, var_0))), all(!(!vec2<bool>(global0.a.a, global0.a.a))), all(select(!vec2<bool>(false, global0.a.a), select(vec2<bool>(global0.a.a, false), vec2<bool>(var_0, true), false), select(false, true, false))), select(var_0, global0.a.a, -311f >= _wgslsmith_div_f32(arg_0, -1000f))), vec4<bool>(false, var_0, true, true));
    var var_2 = countOneBits(~firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, global3[_wgslsmith_index_u32(u_input.c, 22u)], global2.x, -2147483647i), vec4<i32>(arg_3, arg_3, global0.d.x, -2147483647i))));
    let var_3 = select(vec3<bool>(true, true, true), vec3<bool>(true, global0.a.a, true), var_0);
    return _wgslsmith_dot_vec2_i32(global2.wz, global0.b.yw);
}

fn func_2(arg_0: vec3<f32>) -> Struct_5 {
    var var_0 = Struct_1(global0.a.a);
    var var_1 = Struct_4(func_3(-617f, _wgslsmith_mult_vec2_i32(global2.yy, select(vec2<i32>(u_input.b.x, u_input.b.x), u_input.a, vec2<bool>(global0.a.a, false)) ^ -u_input.a), _wgslsmith_add_vec2_u32(~(~vec2<u32>(1u, 18113u)), vec2<u32>(1u, 1u)), global0.d.x), 25378u);
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.b.x, min(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(0u, 22u)], -2147483647i), ~global0.c)), -(~_wgslsmith_mult_i32(-12968i, ~57047i)));
    let var_3 = ~_wgslsmith_div_i32(44448i << (0u % 32u), -2147483647i);
    global3 = array<i32, 22>();
    return Struct_5(global4[_wgslsmith_index_u32(u_input.c, 6u)], -535f, max(-select(vec3<i32>(7867i, -2147483647i, global0.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(global2.x, 27544i, global0.d.x), u_input.b), !vec3<bool>(true, var_0.a, true)), abs(~u_input.b) ^ -vec3<i32>(1i, 1i, 1i)));
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: Struct_2, arg_3: Struct_4) -> Struct_2 {
    let var_0 = countOneBits(~(~(-countOneBits(vec3<i32>(1i, global3[_wgslsmith_index_u32(u_input.c, 22u)], -2147483647i)))));
    var var_1 = ~global1[_wgslsmith_index_u32(abs(~global1[_wgslsmith_index_u32(max(~global1[_wgslsmith_index_u32(u_input.c, 32u)], ~29341u), 32u)]), 32u)];
    var var_2 = vec2<bool>(true, true);
    let var_3 = !select(select(select(!vec2<bool>(arg_0.a.a.a, false), select(vec2<bool>(true, var_2.x), arg_2.a, true), true), !(!vec2<bool>(var_2.x, global0.a.a)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), !arg_2.a, select(vec2<bool>(true, arg_2.a.x), vec2<bool>(var_2.x, global0.a.a), false)), select(!arg_2.a, select(arg_2.a, vec2<bool>(true, arg_2.b), arg_2.a), false)), arg_0.a.a.a);
    global3 = array<i32, 22>();
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> Struct_2 {
    global0 = global4[_wgslsmith_index_u32(1u, 6u)];
    var var_0 = !select(!select(!vec2<bool>(global0.a.a, false), !vec2<bool>(true, arg_0.a), all(vec3<bool>(arg_0.a, false, arg_0.a))), vec2<bool>(true, false), select(vec2<bool>(!global0.a.a, false || global0.a.a), vec2<bool>(global0.a.a, true), !select(vec2<bool>(global0.a.a, arg_0.a), vec2<bool>(true, global0.a.a), global0.a.a)));
    var var_1 = !vec4<bool>((-global3[_wgslsmith_index_u32(7690u, 22u)] <= 0i) || !select(true, false, false), all(!vec4<bool>(true, global0.a.a, false, true)), any(select(vec4<bool>(arg_0.a, global0.a.a, false, global0.a.a), !vec4<bool>(global0.a.a, false, global0.a.a, false), u_input.b.x >= 2147483647i)), arg_1.b <= _wgslsmith_mult_u32(u_input.c, abs(1u)));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1405f * -283f) + _wgslsmith_f_op_f32(965f + 2265f))), _wgslsmith_f_op_f32(sign(-187f))));
    return func_4(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -797f, var_3.x)) * vec3<f32>(-1184f, -416f, -1697f)))), 7996i, Struct_2(!(!var_1.xy), var_1.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(759f)) * _wgslsmith_f_op_f32(var_3.x + -136f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.x)) + _wgslsmith_div_f32(var_3.x, 336f)), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_3.x, -474f) + vec3<f32>(607f, 1831f, var_3.x))).b)), Struct_4(reverseBits(reverseBits(~global3[_wgslsmith_index_u32(51728u, 22u)])), _wgslsmith_add_u32(~u_input.c, min(u_input.c | arg_1.b, 1u))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> f32 {
    var var_0 = func_2(vec3<f32>(843f, -333f, -203f));
    let var_1 = Struct_2(select(arg_1.a, vec2<bool>(global0.a.a, var_0.a.a.a), arg_1.a), true & global0.a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1029f, -394f)));
    global2 = vec4<i32>(-global0.b.x, ~_wgslsmith_mult_i32(var_0.c.x >> (select(u_input.c, 30021u, true) % 32u), -2147483647i), _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(-vec2<i32>(global2.x, var_0.a.d.x), _wgslsmith_mod_vec2_i32(global0.b.zw, u_input.b.yz))), firstTrailingBit(global2.xz)), max(-18226i, global0.d.x));
    let var_2 = var_0.a.a;
    return arg_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 32>();
    var var_0 = 2136f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1168f);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(1457f + 1144f), func_1(Struct_1(global0.a.a), Struct_4(u_input.b.x, u_input.c)), ~394u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-866f - -1583f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(1019f, 713f, global0.a.a)), -1515f))) * func_4(Struct_5(Struct_3(Struct_1(global0.a.a), vec4<i32>(u_input.a.x, 52048i, 2147483647i, global2.x), 24586i, vec3<i32>(30290i, u_input.b.x, global0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(492f - 796f), _wgslsmith_f_op_f32(f32(-1f) * -396f)), select(global2.zzw, global2.zwy, global0.a.a) & _wgslsmith_sub_vec3_i32(vec3<i32>(33557i, -20616i, global3[_wgslsmith_index_u32(0u, 22u)]), u_input.b)), firstLeadingBit(global0.c), func_1(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(622f, 107f, 229f), vec3<f32>(190f, -596f, -907f))).a.a, Struct_4(global0.d.x, abs(u_input.c))), Struct_4(reverseBits(_wgslsmith_div_i32(global2.x, global2.x)), global1[_wgslsmith_index_u32(u_input.c, 32u)] >> (_wgslsmith_div_u32(u_input.c, u_input.c) % 32u))).c.yy);
    var var_2 = Struct_5(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 830f, 1421f), vec3<f32>(-2455f, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-710f, 819f, var_1.x)), vec3<bool>(global0.a.a, global0.a.a, false))))).a, var_1.x, vec3<i32>(~(~(-global2.x)), -_wgslsmith_mult_i32(18157i, ~u_input.b.x), 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, var_2.b, -221f))).c.x, 1i), vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(~0i, var_2.c.x)), 2147483647i, 74321i, _wgslsmith_mod_i32(u_input.b.x, var_2.a.c >> (global1[_wgslsmith_index_u32(min(u_input.c, u_input.c), 32u)] % 32u))), var_1.x);
}

