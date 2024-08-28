struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global2: vec4<f32> = vec4<f32>(-1356f, -523f, -218f, -1001f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_2(select(~(~u_input.d.zw), vec2<u32>(1u, 1u), !global1.yy) & arg_2.a);
    return global2.x;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1571f, 576f, 1000f), global2.yxz)) + vec3<f32>(-874f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global2.x, global2.x, Struct_2(vec2<u32>(1u, u_input.b))))))));
    let var_1 = _wgslsmith_f_op_f32(-global2.x);
    var var_2 = Struct_3(!((global1.x || true) & any(select(vec4<bool>(true, false, false, global0.x), vec4<bool>(global1.x, false, false, true), global1.x))), Struct_2(_wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(u_input.d.x, u_input.c.x)) >> (_wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(u_input.b, 0u)) % vec2<u32>(32u))), Struct_1(~reverseBits(countOneBits(vec4<u32>(u_input.d.x, u_input.c.x, u_input.d.x, u_input.d.x)))));
    var var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(firstLeadingBit(-vec4<i32>(-2147483647i, 2147483647i, 0i, 0i))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -45877i, u_input.a.x, u_input.a.x), u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(18433i, 64870i, -1i, u_input.a.x) | max(u_input.a, u_input.a))), ~vec4<i32>(max(u_input.a.x, 1i), u_input.a.x, ~u_input.a.x, _wgslsmith_div_i32(-35021i << (var_2.b.a.x % 32u), u_input.a.x)));
    var var_4 = Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(global2.x, _wgslsmith_f_op_f32(355f - -1000f), var_2.b)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(global2.x * var_0.x)))), (_wgslsmith_mod_i32(u_input.a.x ^ -2147483647i, -u_input.a.x) <= _wgslsmith_mult_i32(~21513i, min(9320i, u_input.a.x))) && true, u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(687f, _wgslsmith_f_op_f32(var_0.x + var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -632f))))));
    return Struct_4(var_2.b);
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-global2.x))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-616f + global2.x))))));
    var_0 = global2.x;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-576f, 435f))));
    let var_1 = -reverseBits(vec4<i32>(-1i, _wgslsmith_clamp_i32(~2147483647i, 1i, ~u_input.a.x), abs(firstTrailingBit(-1i)), max(3689i, u_input.a.x)));
    var var_2 = ((~(arg_1.a.a.x | arg_1.a.a.x) >> (1u % 32u)) ^ 6833u) < ~min(~countOneBits(30177u), u_input.d.x);
    return Struct_3(_wgslsmith_mult_u32(_wgslsmith_mod_u32(14341u, firstLeadingBit(arg_1.a.a.x)), 86282u) >= _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(42273u, arg_1.a.a.x, arg_1.a.a.x, 98556u), u_input.d), min(u_input.c.x, 0u)), 1u), Struct_2(~arg_1.a.a ^ u_input.d.xz), Struct_1(u_input.d));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_5 {
    global1 = !vec4<bool>(!global1.x, arg_3.a, false, ~(~arg_3.b.a.x) == _wgslsmith_mult_u32(arg_3.c.a.x, _wgslsmith_div_u32(43019u, 40923u)));
    let var_0 = Struct_4(arg_3.b);
    let var_1 = !select(~u_input.d.x > ~73727u, !(!global0.x && !global0.x), true);
    let var_2 = !(_wgslsmith_f_op_f32(-1072f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x)))) <= _wgslsmith_f_op_f32(global2.x + -1000f));
    var var_3 = !global1.x;
    return Struct_5(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(global2.zx)))))))), var_1, _wgslsmith_dot_vec3_i32(min(_wgslsmith_div_vec3_i32(vec3<i32>(-16747i, 1i, -1i), u_input.a.wxx) ^ vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-u_input.a.x, u_input.a.x, countOneBits(50184i))), countOneBits(~(~vec3<i32>(1i, u_input.a.x, u_input.a.x)))), arg_2);
}

fn func_6(arg_0: Struct_5) -> Struct_1 {
    let var_0 = arg_0;
    global0 = !select(global1.zyy, select(global1.xxy, select(global1.yzw, select(global1.zyx, vec3<bool>(global0.x, true, arg_0.b), global1.x), false), select(!global1.yxz, vec3<bool>(false, arg_0.b, global1.x), select(global1.wzy, vec3<bool>(global1.x, var_0.b, global1.x), false))), true);
    return func_4(21788i, Struct_4(Struct_2(vec2<u32>(~46516u, 7529u)))).c;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(global2.xz + global2.xw);
    global1 = !(!select(select(!vec4<bool>(global1.x, false, false, false), select(vec4<bool>(true, global1.x, false, global0.x), vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), !vec4<bool>(global1.x, global1.x, false, global1.x)), !(!vec4<bool>(global0.x, true, true, global1.x)), select(vec4<bool>(global0.x, global0.x, false, global0.x), select(vec4<bool>(global1.x, true, false, global0.x), vec4<bool>(global1.x, global1.x, true, global1.x), false), !global0.x)));
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -807f), _wgslsmith_f_op_f32(-488f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2.x, arg_2.x), _wgslsmith_f_op_f32(-var_0.x), false)))));
    global0 = vec3<bool>(any(vec4<bool>(global0.x, ~(-8645i) != u_input.a.x, all(!vec4<bool>(global1.x, global1.x, global1.x, global0.x)), true)), any(select(global0.xz, select(global0.yz, !global0.xy, global1.wy), all(!vec4<bool>(global0.x, false, global0.x, true)))), false);
    return Struct_4(Struct_2(select(arg_1.a.yz, vec2<u32>(max(4294967295u, 72504u), ~arg_1.a.x), vec2<bool>(global1.x, global0.x))));
}

fn func_1(arg_0: Struct_4) -> bool {
    var var_0 = func_7(arg_0.a, func_6(func_5(true, arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)), func_4(i32(-1i) * -2147483647i, func_2()))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, global2.x, global2.x, global2.x), vec4<f32>(global2.x, -503f, global2.x, 337f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, 1667f) - vec4<f32>(-874f, 1036f, 1000f, -643f))))));
    global1 = vec4<bool>(true, false, ~(_wgslsmith_add_i32(u_input.a.x, u_input.a.x) | u_input.a.x) <= 0i, global0.x);
    global1 = select(vec4<bool>(any(!vec4<bool>(global1.x, true, global1.x, global0.x)), any(vec3<bool>(true, true, any(vec4<bool>(false, false, true, true)))), any(global0.xx), global0.x), vec4<bool>(true, func_4(min(12070i, u_input.a.x), arg_0).a, false, true), false);
    var var_1 = global1.x;
    let var_2 = _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(-901f, _wgslsmith_f_op_f32(global2.x * -598f), Struct_2(vec2<u32>(1u, 4294967295u)))), global2.x)))));
    return ~44863u <= u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!select(select(select(vec4<bool>(global0.x, false, false, false), vec4<bool>(global0.x, global0.x, global1.x, true), vec4<bool>(false, global1.x, global1.x, false)), select(vec4<bool>(true, global0.x, false, false), vec4<bool>(global1.x, global1.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global1.x, false)), vec4<bool>(false, global1.x, global0.x, global0.x)), vec4<bool>(true, true, true, true), false));
    global1 = select(vec4<bool>((-u_input.a.x < _wgslsmith_sub_i32(u_input.a.x, 0i)) & true, global0.x & any(!global1.zy), any(select(!vec4<bool>(global1.x, global0.x, true, global0.x), select(vec4<bool>(global0.x, global1.x, global1.x, true), vec4<bool>(global0.x, true, true, false), vec4<bool>(false, false, false, true)), true)), true), vec4<bool>(true, global0.x, !func_1(Struct_4(Struct_2(vec2<u32>(u_input.b, 91793u)))), true), vec4<bool>(false, !func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -11016i, 15937i), vec3<i32>(u_input.a.x, 0i, u_input.a.x)), Struct_4(Struct_2(u_input.d.xz))).a, true, global0.x));
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.x * 1514f), global2.x, _wgslsmith_f_op_f32(-global2.x), -526f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-409f, global2.x, global2.x, -1039f) + vec4<f32>(global2.x, 366f, global2.x, global2.x)) * vec4<f32>(-317f, -119f, -1000f, -751f))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2623f, global2.x, -1718f, 452f)))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1952f);
    var var_3 = Struct_2(min(((u_input.d.yy | vec2<u32>(u_input.c.x, 9737u)) << (~u_input.c % vec2<u32>(32u))) >> (u_input.c % vec2<u32>(32u)), select(~u_input.d.zy, _wgslsmith_clamp_vec2_u32(u_input.d.zz, u_input.c, vec2<u32>(u_input.d.x, u_input.d.x)), select(!global1.yz, !global0.xx, any(global1.wz)))));
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-745f - _wgslsmith_div_f32(global2.x, -586f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(min(reverseBits(~u_input.a.x), ~u_input.a.x), max(u_input.a.x, (u_input.a.x | u_input.a.x) << (10029u % 32u)), max(var_0.x, 1i), 0i), func_5(all(select(global0.yz, vec2<bool>(global0.x, false), global1.yy)), Struct_4(Struct_2(select(vec2<u32>(var_3.a.x, 87224u), vec2<u32>(1u, 0u), global0.yy))), vec2<f32>(_wgslsmith_f_op_f32(-1774f + _wgslsmith_f_op_f32(global2.x - 1145f)), _wgslsmith_f_op_f32(176f * _wgslsmith_div_f32(1012f, global2.x))), func_4((10927i & var_0.x) ^ _wgslsmith_mod_i32(var_0.x, -2147483647i), Struct_4(Struct_2(u_input.d.wz)))).c);
}

