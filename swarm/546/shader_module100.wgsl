struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 14> = array<f32, 14>(-258f, 817f, 428f, -1578f, -1512f, 366f, -1000f, -939f, -1108f, 2422f, 1084f, 1817f, 391f, 685f);

var<private> global2: Struct_2 = Struct_2(true, Struct_1(true, vec3<f32>(-440f, 652f, -974f), true), vec2<u32>(0u, 34418u), vec3<i32>(-1i, -17361i, -1i));

var<private> global3: vec4<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> vec2<u32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1863f, _wgslsmith_f_op_f32(ceil(1090f))))))) + _wgslsmith_f_op_f32(-186f - -1256f));
    var var_0 = _wgslsmith_add_u32(0u, _wgslsmith_add_u32(4294967295u, 0u));
    global3 = select(select(vec4<bool>(arg_3.x, arg_3.x, any(!vec3<bool>(true, false, global3.x)), !select(false, true, arg_3.x)), select(select(vec4<bool>(false, true, arg_3.x, true), vec4<bool>(global3.x, false, global2.a, true), global3.x), !select(vec4<bool>(true, global3.x, false, true), vec4<bool>(true, true, false, false), true), true), select(true, arg_1.x <= global2.b.b.x, !global2.a) && any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(global3.x, false)))), select(!select(vec4<bool>(true, arg_3.x, true, arg_3.x), vec4<bool>(true, true, true, true), global2.a), vec4<bool>(any(select(vec4<bool>(arg_3.x, global2.a, false, false), vec4<bool>(arg_3.x, true, global3.x, false), true)), false, true, arg_3.x), !(false | global2.b.c)), any(global3.yyz));
    var var_1 = false;
    var var_2 = false;
    return arg_2.xy;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec2<f32>) -> vec3<f32> {
    global2 = Struct_2(false, global2.b, _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(global2.c, vec2<u32>(1u, ~u_input.d)), vec2<u32>(~4294967295u, u_input.b << (~4294967295u % 32u)), vec2<u32>(8458u, u_input.d | _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.x, u_input.d, u_input.b, u_input.b), vec4<u32>(u_input.d, 4294967295u, 2707u, 40743u)))), vec3<i32>(-1i) * -vec3<i32>(u_input.c, 0i, 2147483647i));
    var var_0 = Struct_2(true, Struct_1(u_input.a.x == -_wgslsmith_mod_i32(u_input.c, global2.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1162f, _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.d, 14u)])), _wgslsmith_f_op_f32(515f * global2.b.b.x)) - _wgslsmith_f_op_vec3_f32(global2.b.b - _wgslsmith_f_op_vec3_f32(global2.b.b - global2.b.b))), true), vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.x, u_input.d, u_input.d, 98929u), vec4<u32>(33414u, global2.c.x, 25430u, 1u)), global2.c.x, 12556u), _wgslsmith_dot_vec2_u32(~global2.c & func_3(-1i, vec3<f32>(1000f, global2.b.b.x, -544f), vec4<u32>(52885u, global2.c.x, global2.c.x, 4294967295u), vec3<bool>(false, false, true)), global2.c)), vec3<i32>(~_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, u_input.c, global2.d.x, 1i), ~vec4<i32>(0i, 1i, -52165i, -46412i)), global2.d.x, arg_0.x | 75774i));
    var_0 = Struct_2(all(global3.wy), global2.b, var_0.c, (_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(1i, -28074i, var_0.d.x)), countOneBits(var_0.d)) | (select(vec3<i32>(-10968i, 13819i, arg_0.x), var_0.d, global2.b.c) >> ((vec3<u32>(var_0.c.x, 1u, 16726u) | vec3<u32>(global2.c.x, 1u, 1u)) % vec3<u32>(32u)))) | -arg_0);
    var var_1 = global2.b;
    var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.b), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-620f, var_0.b.b.x, 643f), _wgslsmith_f_op_vec3_f32(-var_1.b))))), any(select(global3.zw, !global3.zx, select(vec2<bool>(global3.x, var_0.b.c), vec2<bool>(var_1.c, true), global3.x))));
    return vec3<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(global2.c.x & (_wgslsmith_sub_u32(30413u, global2.c.x) << (4294967295u % 32u)), 14u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-593f - _wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -659f)))), 2164f, _wgslsmith_f_op_f32(f32(-1f) * -255f));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = vec2<u32>(global2.c.x, _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(u_input.b, 4294967295u, u_input.d, u_input.b)), ~(vec4<u32>(86637u, global2.c.x, 4294967295u, 4294967295u) >> (vec4<u32>(u_input.b, global2.c.x, global2.c.x, 4294967295u) % vec4<u32>(32u))))) << (((_wgslsmith_clamp_vec2_u32(vec2<u32>(global2.c.x, 4294967295u), vec2<u32>(55380u, u_input.d), ~vec2<u32>(u_input.d, global2.c.x)) << (~vec2<u32>(global2.c.x, global2.c.x) % vec2<u32>(32u))) & _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(min(global2.c, global2.c), reverseBits(vec2<u32>(4582u, 1u)), ~global2.c), select(firstTrailingBit(vec2<u32>(global2.c.x, global2.c.x)), firstTrailingBit(global2.c), !global3.zx))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(arg_2.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1509f))));
    let var_2 = true;
    global1 = array<f32, 14>();
    let var_3 = select(countOneBits(~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 1u, global2.c.x), countOneBits(vec3<u32>(u_input.b, 4294967295u, u_input.d)))), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(var_0, vec2<u32>(u_input.d, 39745u)), global2.c, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, global2.c.x), vec2<u32>(global2.c.x, var_0.x))), vec2<u32>(~0u, reverseBits(11050u))), countOneBits(abs(global2.c.x)), ~_wgslsmith_mod_u32(0u, 1u)), !any(global3.wzy));
    return Struct_2(arg_2.c, Struct_1(1i < ~_wgslsmith_mod_i32(12231i, global2.d.x), _wgslsmith_div_vec3_f32(arg_0.b, arg_2.b), global3.x), vec2<u32>(global2.c.x, ~firstTrailingBit(max(21467u, 0u))), -global2.d);
}

fn func_1() -> Struct_2 {
    global3 = select(select(!vec4<bool>(select(global2.b.a, true, true), 1000f < global1[_wgslsmith_index_u32(u_input.d, 14u)], !global2.a, !global2.a), vec4<bool>(true, !global3.x, global2.b.a && (global2.a || true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.b.x) * -559f) <= global2.b.b.x), vec4<bool>(!(-2147483647i == u_input.c) == global3.x, true, false, !global2.a), true);
    global2 = func_4(Struct_1(true, _wgslsmith_f_op_vec3_f32(func_2(select(-global2.d, global2.d, true), vec2<f32>(-1236f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 14u)])), vec2<f32>(_wgslsmith_f_op_f32(-1000f + 753f), global1[_wgslsmith_index_u32(~47824u, 14u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.b.x)) == global2.b.b.x), vec2<i32>(select(-u_input.a.x, u_input.a.x, global2.b.c), 2147483647i), Struct_1(select(global3.x, global3.x, true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-368f, -642f, global2.b.b.x) * vec3<f32>(global2.b.b.x, 367f, global2.b.b.x))))), !(_wgslsmith_f_op_f32(-global2.b.b.x) >= _wgslsmith_f_op_f32(1592f - 653f))));
    var var_0 = select(!select(global3.wzy, global3.ywz, global2.b.b.x == _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(u_input.b, 14u)]))), !(!global3.xxx), select(vec3<bool>(global2.d.x < _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -58445i, global2.d.x, 11564i), vec4<i32>(u_input.a.x, -43374i, 2147483647i, global2.d.x)), all(select(vec3<bool>(global2.b.a, global3.x, false), vec3<bool>(true, global3.x, false), global3.wwx)), all(vec4<bool>(true, false, true, true)) || all(global3.xxx)), select(vec3<bool>(!global2.a, global2.a, all(global3.yx)), vec3<bool>(all(vec4<bool>(false, global2.a, global3.x, global2.a)), true, any(vec4<bool>(global2.b.a, true, true, false))), select(!global3.yxx, global3.zyw, !global2.b.c)), select(global3.xzw, vec3<bool>(global2.a, any(vec4<bool>(true, false, false, global3.x)), true), global3.yxw)));
    let var_1 = Struct_2(any(!vec3<bool>(true, var_0.x, any(var_0.zz))), func_4(Struct_1(true, vec3<f32>(-821f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 14u)])), false), global2.d.xx, func_4(global2.b, ~(u_input.a << (global2.c % vec2<u32>(32u))), global2.b).b).b, ~_wgslsmith_mult_vec2_u32(vec2<u32>(global2.c.x, 0u), _wgslsmith_div_vec2_u32(~global2.c, firstLeadingBit(vec2<u32>(41725u, u_input.d)))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(firstLeadingBit(-2147483647i), ~(-2122i)), global2.d.x), -(~(u_input.c << (global2.c.x % 32u))), (21365i & abs(global2.d.x)) & ~firstTrailingBit(57165i)));
    let var_2 = -23682i;
    return Struct_2(!any(vec4<bool>(var_0.x | true, var_0.x, !var_1.b.c, var_1.d.x > 14965i)), Struct_1(all(vec2<bool>(true, false)), vec3<f32>(-644f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-672f, -751f)))), 1067f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1219f) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 14u)])) >= global2.b.b.x), vec2<u32>(66978u, ~0u), vec3<i32>(u_input.c, abs(-_wgslsmith_mult_i32(var_2, 2147483647i)), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_4(global2.b, vec2<i32>(func_4(func_1().b, abs(u_input.a), Struct_1(false, var_0.b.b, true)).d.x, global2.d.x) ^ _wgslsmith_add_vec2_i32(-(~vec2<i32>(0i, var_0.d.x)), func_1().d.yx), func_4(func_1().b, vec2<i32>(-2147483647i, ~func_1().d.x), var_0.b).b).b;
    global2 = func_4(func_4(func_4(Struct_1(!global3.x, _wgslsmith_f_op_vec3_f32(func_2(vec3<i32>(-2147483647i, u_input.c, 30537i), vec2<f32>(global1[_wgslsmith_index_u32(125584u, 14u)], -1736f), vec2<f32>(-893f, 1191f))), true), abs(vec2<i32>(u_input.a.x, 34768i)), func_4(Struct_1(false, vec3<f32>(-1957f, global2.b.b.x, global1[_wgslsmith_index_u32(u_input.d, 14u)]), global3.x), countOneBits(vec2<i32>(1i, 12206i)), var_0.b).b).b, u_input.a, func_1().b).b, -(~global2.d.xz), func_1().b);
    let var_2 = ~firstLeadingBit(~(~select(vec4<u32>(u_input.d, 21100u, 119103u, 1u), vec4<u32>(var_0.c.x, global2.c.x, global2.c.x, global2.c.x), false)));
    var var_3 = func_1().b;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, 1004f, var_0.b.b.x, var_3.b.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, global2.b.b.x, 889f, var_0.b.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x + var_1.b.x) * _wgslsmith_div_f32(global2.b.b.x, 1000f)), global2.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2387f), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(~0u, 14u)], -283f, var_1.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.x))) - _wgslsmith_f_op_f32(-var_0.b.b.x)));
}

