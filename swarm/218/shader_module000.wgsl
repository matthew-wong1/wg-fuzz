struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<f32>, arg_3: vec2<u32>) -> f32 {
    let var_0 = global2.a.ywy;
    let var_1 = vec4<u32>(abs(reverseBits(~0u & _wgslsmith_div_u32(19473u, u_input.a))), ~(~27330u), _wgslsmith_dot_vec4_u32(~vec4<u32>(min(25337u, arg_3.x), ~31924u, ~arg_3.x, u_input.d), _wgslsmith_mod_vec4_u32(vec4<u32>(abs(u_input.d), arg_3.x << (arg_0 % 32u), 0u, ~arg_0), vec4<u32>(abs(72867u), 5188u, select(arg_0, 1u, var_0.x), ~u_input.d))), 1u);
    global2 = Struct_1(select(!(!vec4<bool>(global1.x, false, true, false)), global2.a, all(select(vec2<bool>(var_0.x, false), !var_0.zx, true))));
    let var_2 = Struct_3(Struct_1(global2.a), abs(var_1), true);
    var var_3 = Struct_2(Struct_1(var_2.a.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(921f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-839f * 318f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(round(320f)))))) + -905f);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(select(global2.a, select(!vec4<bool>(false, true, global2.a.x, global2.a.x), global2.a, true), true)));
    var var_1 = Struct_4(Struct_3(Struct_1(!select(vec4<bool>(var_0.a.a.x, true, global1.x, true), global2.a, global2.a)), select(vec4<u32>(u_input.d, u_input.d, 47908u, u_input.d), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a), !global2.a) & _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(4294967295u, 10489u, 4294967295u, u_input.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.d, 3722u), vec4<u32>(15382u, u_input.a, 17393u, 1u))), all(select(vec4<bool>(true, global1.x, false, global1.x), select(var_0.a.a, var_0.a.a, false), select(vec4<bool>(true, global2.a.x, true, false), global2.a, var_0.a.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(271f, 125f, 323f, -625f))) - vec4<f32>(_wgslsmith_div_f32(-576f, 266f), 602f, _wgslsmith_f_op_f32(f32(-1f) * -2010f), 1164f))), true);
    var_1 = Struct_4(Struct_3(var_1.a.a, vec4<u32>(_wgslsmith_sub_u32(1u, 1u), ~(~6994u), firstTrailingBit(u_input.a), 1u), true), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(4294967295u, u_input.c | u_input.c, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1817f, var_1.b.x), vec2<f32>(var_1.b.x, var_1.b.x))), var_1.a.b.xw << (vec2<u32>(u_input.a, var_1.a.b.x) % vec2<u32>(32u)))) + -1377f), var_1.b.x, 965f, _wgslsmith_f_op_f32(ceil(1953f))), global2.a.x);
    let var_2 = global1.x;
    global1 = select(vec3<bool>(false, var_1.c, false && ((global2.a.x && global2.a.x) != false)), global2.a.zww, var_1.a.a.a.yzz);
    return Struct_2(Struct_1(select(!var_0.a.a, var_0.a.a, !vec4<bool>(var_0.a.a.x, true, false, false))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(arg_3.b.xwx));
    var var_1 = arg_0;
    return 0i;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> bool {
    var var_0 = -vec4<i32>(abs(u_input.c), u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2, u_input.b), reverseBits(vec2<i32>(arg_2, 0i))), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, arg_2), vec2<i32>(0i, 46139i)), select(vec2<i32>(70324i, 8197i), vec2<i32>(2467i, arg_2), true))), u_input.c);
    let var_1 = global1.xz;
    let var_2 = func_2();
    var var_3 = ~_wgslsmith_dot_vec2_i32(-(firstTrailingBit(var_0.wy) << ((vec2<u32>(1u, u_input.d) ^ vec2<u32>(0u, u_input.a)) % vec2<u32>(32u))), -(-vec2<i32>(var_0.x, u_input.b) & -var_0.xz));
    var_0 = select((reverseBits(vec4<i32>(u_input.c, 1i, u_input.c, 51114i) & vec4<i32>(2147483647i, 12586i, u_input.b, u_input.c)) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.d, u_input.d), vec4<u32>(u_input.d, 31322u, u_input.a, 4038u)) % vec4<u32>(32u))) | vec4<i32>(~(-arg_2), arg_2, 1i, abs(~(-19990i))), vec4<i32>(arg_2, u_input.c, ~_wgslsmith_sub_i32(0i, -12330i), -27877i) << (vec4<u32>(countOneBits(firstTrailingBit(u_input.a)), 4006u, ~(~u_input.a), reverseBits(u_input.d | u_input.d)) % vec4<u32>(32u)), all(select(var_2.a.a.wwx, vec3<bool>(!global2.a.x, true, true), !select(vec3<bool>(true, var_2.a.a.x, arg_1.a.a.x), arg_1.a.a.yzz, false))));
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<bool>(all(!select(vec3<bool>(global2.a.x, true, true), vec3<bool>(true, global2.a.x, true), !global2.a.x)), true, true);
    global1 = !select(global2.a.xzz, vec3<bool>(select(false, var_0.x, true), false, true != !global2.a.x), func_5(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(max(181f, 762f))), Struct_2(Struct_1(vec4<bool>(var_0.x, true, global1.x, var_0.x))), func_4(func_2(), u_input.d, all(global2.a), Struct_4(Struct_3(Struct_1(vec4<bool>(global1.x, true, global2.a.x, var_0.x)), vec4<u32>(u_input.d, u_input.a, u_input.a, 3054u), true), vec4<f32>(-188f, -697f, -713f, -348f), global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(777f)) * -808f)));
    global2 = func_2().a;
    global1 = !global2.a.xzy;
    let var_1 = Struct_4(Struct_3(Struct_1(global2.a), vec4<u32>(15451u, _wgslsmith_add_u32(u_input.a & u_input.a, ~u_input.d), u_input.d, _wgslsmith_dot_vec4_u32(~vec4<u32>(55250u, 15287u, u_input.d, 1u), ~vec4<u32>(u_input.a, 4294967295u, u_input.d, u_input.a))), func_5(_wgslsmith_f_op_f32(-1453f - -195f), func_2(), u_input.c, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1091f, -254f, -761f), vec4<f32>(628f, 572f, 1823f, 671f), true)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -828f, -1126f, 1568f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(215f, -138f, 2311f, -296f)))), select(true || global2.a.x, true, false)))), true);
    return func_2().a;
}

fn func_6(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(func_3(abs(firstTrailingBit(u_input.d)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-1i, u_input.b)), 1i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_1))), ~(vec2<u32>(u_input.d, 14408u) << (vec2<u32>(u_input.d, 1u) % vec2<u32>(32u))))), _wgslsmith_f_op_f32(trunc(arg_1.x)), -202f) * vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1478f, 1000f, true))) - -975f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.x)) * -1565f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1245f)))));
    global2 = arg_2;
    let var_1 = func_2();
    global2 = func_1();
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(27102i, u_input.c, 2147483647i), vec3<i32>(-_wgslsmith_add_i32(74531i, 1i), 6729i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(7331u, 1u, u_input.d) % vec3<u32>(32u)), vec3<i32>(-17212i, u_input.c, 15846i)))) & _wgslsmith_add_vec3_i32(-(~vec3<i32>(u_input.b, u_input.b, u_input.b) & ~vec3<i32>(-1i, u_input.c, 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(23453i << (u_input.d % 32u), -42565i, func_4(var_1, u_input.a, global2.a.x, Struct_4(Struct_3(Struct_1(var_1.a.a), vec4<u32>(19832u, u_input.a, 4294967295u, u_input.a), false), arg_3, true))), countOneBits(vec3<i32>(u_input.c, u_input.b, 1i))));
    return countOneBits(abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.a, u_input.d) >> (vec4<u32>(48027u, 0u, u_input.d, 10402u) % vec4<u32>(32u)), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(any(!(!select(global2.a, global2.a, vec4<bool>(global2.a.x, true, false, false)))), vec2<f32>(-442f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1200f)) + _wgslsmith_f_op_f32(f32(-1f) * -161f)) + _wgslsmith_f_op_f32(f32(-1f) * -119f))), func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1190f, -563f, 1000f, -666f), vec4<f32>(441f, -1393f, -1000f, -370f))), _wgslsmith_div_vec4_f32(vec4<f32>(181f, -225f, -491f, 561f), vec4<f32>(1006f, -1000f, 330f, -639f)))))));
    var var_1 = func_2().a;
    var_1 = func_1();
    let var_2 = Struct_1(!func_2().a.a);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(838f, _wgslsmith_f_op_f32(1743f - -1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1625f, -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-718f, 0u, ~var_0.zy, vec4<u32>(~u_input.d, func_6(-83400i <= u_input.c, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3, var_3))), var_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, 2392f, var_3, -464f) * vec4<f32>(-591f, -871f, var_3, var_3))).x | (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, var_0.x, u_input.d), var_0.wyy) ^ abs(8259u)), var_0.x, 19072u));
}

