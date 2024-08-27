struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_5, 10> = array<Struct_5, 10>(Struct_5(true, vec2<i32>(1i, 62960i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -1i), Struct_1(vec2<bool>(true, false), vec3<i32>(-11660i, 34297i, 2147483647i))), Struct_5(false, vec2<i32>(-9804i, -15830i), vec4<i32>(16349i, 1i, 28515i, i32(-2147483648)), Struct_1(vec2<bool>(false, false), vec3<i32>(-34392i, 0i, -37805i))), Struct_5(false, vec2<i32>(1i, -1i), vec4<i32>(0i, i32(-2147483648), -26004i, 37162i), Struct_1(vec2<bool>(false, false), vec3<i32>(-12825i, 2147483647i, 0i))), Struct_5(false, vec2<i32>(-21094i, -1i), vec4<i32>(-23876i, 0i, 2147483647i, -4703i), Struct_1(vec2<bool>(false, false), vec3<i32>(8997i, i32(-2147483648), 33940i))), Struct_5(true, vec2<i32>(42879i, 1i), vec4<i32>(0i, 2147483647i, -5833i, -30810i), Struct_1(vec2<bool>(false, false), vec3<i32>(i32(-2147483648), -13552i, 2147483647i))), Struct_5(true, vec2<i32>(-1i, 0i), vec4<i32>(0i, 22228i, 55003i, -1i), Struct_1(vec2<bool>(false, false), vec3<i32>(-30387i, 72472i, 2147483647i))), Struct_5(false, vec2<i32>(0i, 27467i), vec4<i32>(1i, -10633i, -22716i, 1i), Struct_1(vec2<bool>(true, false), vec3<i32>(-33498i, 2645i, -19366i))), Struct_5(true, vec2<i32>(2147483647i, i32(-2147483648)), vec4<i32>(0i, 43262i, -1i, 273i), Struct_1(vec2<bool>(true, false), vec3<i32>(10833i, 1i, 0i))), Struct_5(false, vec2<i32>(31234i, 41493i), vec4<i32>(-7430i, 2147483647i, 0i, -26279i), Struct_1(vec2<bool>(false, true), vec3<i32>(13684i, 1i, 1i))), Struct_5(true, vec2<i32>(-1i, 1603i), vec4<i32>(15328i, 0i, 18738i, i32(-2147483648)), Struct_1(vec2<bool>(true, true), vec3<i32>(2147483647i, 2147483647i, -41650i))));

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = arg_1;
    global2 = vec3<bool>(all(!select(vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, global2.x))) || (true | global2.x), global2.x, !all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, global2.x, global2.x), vec3<bool>(false, false, global2.x)), vec3<bool>(true, true, true), select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, global2.x, false), global2.x))));
    var var_1 = arg_0;
    var var_2 = !all(vec3<bool>(u_input.a != u_input.a, global2.x, false)) && select(global2.x, any(!vec3<bool>(global2.x, true, true)), true);
    global0 = -1i ^ select(~u_input.a, 33402i, true | !(false && global2.x));
    return vec4<i32>(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(u_input.a, -623i)) & vec2<i32>(-2147483647i, ~u_input.a), _wgslsmith_sub_vec2_i32(~(~vec2<i32>(u_input.a, 1i)), _wgslsmith_mod_vec2_i32(min(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-2147483647i, u_input.a)))), ~u_input.a, ~35978i, ~(~firstLeadingBit(0i)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: f32) -> i32 {
    global0 = _wgslsmith_dot_vec4_i32(max(select(-firstLeadingBit(vec4<i32>(arg_0, -1i, u_input.a, u_input.a)), vec4<i32>(-1i) * -vec4<i32>(arg_1.e.b.x, u_input.a, -21085i, arg_0), false), -func_3(Struct_3(vec4<u32>(arg_1.c.x, arg_1.b.x, arg_1.c.x, arg_1.c.x)), Struct_3(vec4<u32>(arg_1.c.x, 1u, 11390u, arg_1.c.x)), Struct_3(vec4<u32>(1u, 0u, arg_1.b.x, arg_1.c.x)))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, -15837i, arg_1.a.b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-41696i, 2147483647i, arg_1.d.b.x, -13837i), vec4<i32>(7705i, u_input.a, u_input.a, arg_2.x) >> (vec4<u32>(arg_1.c.x, arg_1.c.x, arg_1.b.x, arg_1.c.x) % vec4<u32>(32u)), vec4<i32>(20019i, 41564i, -2147483647i, 30434i) | vec4<i32>(u_input.a, arg_2.x, 1i, -36049i))), ~vec4<i32>(-arg_0, _wgslsmith_div_i32(u_input.a, 0i), abs(arg_2.x), 1i)));
    global2 = vec3<bool>(!(-u_input.a != _wgslsmith_mult_i32(~(-1i), 1i)), global2.x, false);
    global2 = !(!select(select(!vec3<bool>(arg_1.e.a.x, arg_1.a.a.x, arg_1.a.a.x), select(vec3<bool>(global2.x, arg_1.d.a.x, arg_1.a.a.x), vec3<bool>(false, arg_1.a.a.x, false), vec3<bool>(false, arg_1.a.a.x, false)), select(vec3<bool>(arg_1.d.a.x, arg_1.e.a.x, true), vec3<bool>(true, global2.x, global2.x), vec3<bool>(false, false, global2.x))), vec3<bool>(true, false == arg_1.d.a.x, !arg_1.a.a.x), all(!global2.zx)));
    var var_0 = Struct_4(Struct_2(arg_1.a, select(vec2<u32>(43370u, ~0u), arg_1.c, arg_1.d.a.x), _wgslsmith_div_vec2_u32(reverseBits(~arg_1.c), arg_1.b & (vec2<u32>(67620u, arg_1.b.x) ^ arg_1.b)), Struct_1(select(global2.xz, !vec2<bool>(false, global2.x), vec2<bool>(true, true)), ~arg_1.a.b ^ min(arg_2, arg_2)), Struct_1(select(vec2<bool>(arg_1.a.a.x, arg_1.d.a.x), vec2<bool>(true, true), select(vec2<bool>(global2.x, false), global2.yz, arg_1.e.a.x)), vec3<i32>(arg_0 ^ 2147483647i, 55544i, max(arg_1.a.b.x, arg_1.d.b.x)))), (~(67445u << (1u % 32u)) >> (~arg_1.b.x % 32u)) & arg_1.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1.c.x, arg_1.c.x, 4294967295u) ^ vec3<u32>(arg_1.b.x, 35358u, 16446u), vec3<u32>(~arg_1.b.x, 1u, firstLeadingBit(arg_1.c.x))), countOneBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.b.x, 4294967295u, arg_1.b.x), vec3<u32>(arg_1.c.x, arg_1.b.x, 79276u)))));
    let var_1 = var_0.a.e;
    return ~abs(u_input.a);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_5) -> vec3<u32> {
    var var_0 = Struct_5(true, _wgslsmith_mod_vec2_i32(max(vec2<i32>(i32(-1i) * -42206i, min(u_input.a, -69963i)), ~_wgslsmith_mod_vec2_i32(arg_1.b, arg_1.d.b.zy)), arg_1.d.b.xx), ~vec4<i32>(func_2(abs(9808i), Struct_2(Struct_1(arg_1.d.a, vec3<i32>(u_input.a, 7280i, -1i)), arg_0.a.yx, vec2<u32>(arg_0.a.x, arg_0.a.x), Struct_1(vec2<bool>(arg_1.a, arg_1.a), arg_1.c.ywz), Struct_1(vec2<bool>(false, false), vec3<i32>(0i, 18207i, 2147483647i))), vec3<i32>(arg_1.c.x, -2147483647i, u_input.a), -939f), -1i, 6768i, u_input.a), Struct_1(global2.yy, arg_1.c.zxy));
    let var_1 = false;
    global2 = vec3<bool>(true, !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(811f, -772f)))) > 481f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -819f), _wgslsmith_f_op_f32(abs(741f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -981f) + -1413f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1244f)), _wgslsmith_f_op_f32(sign(-1658f)), var_0.d.a.x)), 632f));
    var_0 = Struct_5(arg_1.a | (reverseBits(select(arg_0.a.x, arg_0.a.x, true)) != 1u), ~(~select(arg_1.d.b.yy, var_0.b, arg_1.d.a) >> (vec2<u32>(arg_0.a.x, ~87738u) % vec2<u32>(32u))), arg_1.c, Struct_1(vec2<bool>(true, false), vec3<i32>(i32(-1i) * -18043i, u_input.a, arg_1.b.x >> (39898u % 32u)) | _wgslsmith_add_vec3_i32(select(vec3<i32>(var_0.b.x, var_0.b.x, arg_1.d.b.x), var_0.d.b, global2.x), min(arg_1.c.wyy, arg_1.d.b))));
    let var_2 = _wgslsmith_mult_u32(~68774u, arg_0.a.x);
    return vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, reverseBits(54081u)), 1u, abs(var_2)), ~(1u & abs(var_2)), abs(1u));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: f32) -> Struct_4 {
    return Struct_4(Struct_2(Struct_1(select(vec2<bool>(true, arg_0.x), select(vec2<bool>(false, false), vec2<bool>(global2.x, global2.x), global2.x), arg_2), ~vec3<i32>(u_input.a, 19740i, 2147483647i)), arg_1.zx, arg_1.zx >> (arg_1.xx % vec2<u32>(32u)), Struct_1(arg_0.xz, (vec3<i32>(u_input.a, 28456i, 6922i) | vec3<i32>(u_input.a, u_input.a, u_input.a)) | vec3<i32>(1i, 12173i, 1840i)), Struct_1(select(arg_0.zz, !arg_2, global2.x), -vec3<i32>(-11759i, u_input.a, u_input.a))), 45031u, ~max(select(4294967295u >> (0u % 32u), _wgslsmith_mod_u32(47321u, arg_1.x), true), _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(arg_1.x, 0u, 16231u))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    global2 = select(vec3<bool>(all(select(!vec3<bool>(global2.x, arg_1.a.a.x, false), !vec3<bool>(true, false, arg_0.a.a.a.x), arg_0.a.d.a.x)), !(~arg_1.c.x <= min(arg_1.b.x, arg_0.a.b.x)), !global2.x), select(vec3<bool>(false, !any(vec3<bool>(false, arg_0.a.d.a.x, arg_0.a.d.a.x)), arg_0.a.a.a.x), !vec3<bool>(arg_0.a.d.a.x, all(vec4<bool>(true, arg_1.d.a.x, global2.x, global2.x)), global2.x), any(!select(vec3<bool>(arg_0.a.e.a.x, false, global2.x), vec3<bool>(true, arg_1.a.a.x, false), true))), arg_1.e.a.x);
    let var_0 = select(vec3<bool>(true, all(select(select(vec3<bool>(arg_0.a.d.a.x, false, arg_0.a.a.a.x), vec3<bool>(arg_0.a.d.a.x, true, true), vec3<bool>(global2.x, true, false)), select(vec3<bool>(true, global2.x, true), vec3<bool>(arg_0.a.d.a.x, true, true), arg_1.d.a.x), true)), any(select(vec4<bool>(false, false, false, arg_1.d.a.x), select(vec4<bool>(arg_1.e.a.x, global2.x, false, false), vec4<bool>(arg_0.a.e.a.x, arg_1.a.a.x, false, arg_1.d.a.x), vec4<bool>(arg_0.a.d.a.x, arg_1.e.a.x, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(global2.x, arg_1.d.a.x, true, global2.x), true)))), select(vec3<bool>(true, global2.x, select(false, !arg_0.a.a.a.x, true)), vec3<bool>(~6642u == _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.b.x, 9613u, 1u), vec4<u32>(arg_0.b, 0u, arg_0.b, 1u)), !arg_0.a.a.a.x | global2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-1i, u_input.a)) > _wgslsmith_add_i32(18210i, arg_0.a.e.b.x)), arg_0.a.d.b.x < arg_1.e.b.x), arg_1.a.a.x);
    global2 = select(vec3<bool>(true, !(4294967295u > (49930u << (arg_0.a.c.x % 32u))), any(global2.zz)), !(!select(var_0, select(var_0, var_0, arg_1.e.a.x), all(vec3<bool>(arg_0.a.e.a.x, var_0.x, true)))), false);
    global2 = vec3<bool>(false, arg_1.e.a.x, var_0.x);
    let var_1 = -389f;
    return _wgslsmith_f_op_f32(1016f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(sign(-1317f))), _wgslsmith_f_op_f32(-var_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    var var_0 = _wgslsmith_f_op_f32(func_5(func_4(!select(vec3<bool>(global2.x, true, true), vec3<bool>(true, true, global2.x), vec3<bool>(true, true, global2.x)), func_1(Struct_3(vec4<u32>(4294967295u, 1u, 0u, 14290u)), Struct_5(true, vec2<i32>(-2147483647i, 2147483647i), vec4<i32>(u_input.a, u_input.a, 32342i, u_input.a), Struct_1(vec2<bool>(true, global2.x), vec3<i32>(5145i, u_input.a, 1i)))), global2.xz, 1f), Struct_2(func_4(vec3<bool>(true, true, true), ~vec3<u32>(1u, 7418u, 1u), vec2<bool>(false, true), -264f).a.e, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), max(vec2<u32>(0u, 4294967295u), vec2<u32>(12442u, 0u))), vec2<u32>(1u, 1u), func_4(!vec3<bool>(global2.x, global2.x, global2.x), vec3<u32>(0u, 50743u, 0u), global2.yz, 210f).a.e, func_4(!vec3<bool>(global2.x, global2.x, true), vec3<u32>(1u, 1u, 1u), !vec2<bool>(global2.x, global2.x), 1235f).a.e))) < _wgslsmith_f_op_f32(step(-839f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(916f)))));
    var var_1 = global1[_wgslsmith_index_u32(~43067u, 10u)];
    global1 = array<Struct_5, 10>();
    let var_2 = global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(10138u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(30615u, 82525u), vec2<u32>(29145u, 27839u))))), 10u)];
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 70916u, 1u, 27341u), vec4<u32>(1u, 4294967295u, 44341u, 4294967295u)) >> (func_4(!vec3<bool>(var_2.a, global2.x, var_1.d.a.x), countOneBits(vec3<u32>(38434u, 0u, 4294967295u)), select(global2.xx, vec2<bool>(var_1.d.a.x, global2.x), false), _wgslsmith_f_op_f32(floor(-192f))).c % 32u), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(25709u, 0u, 1u, 40263u), vec4<u32>(16844u, 4294967295u, 954u, 4294967295u)) ^ _wgslsmith_div_u32(4294967295u, 20441u)), 0u), _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(1u, 77495u, 41142u))), select(func_1(Struct_3(vec4<u32>(25857u, 1001u, 1u, 54621u)), Struct_5(true, var_2.c.yz, vec4<i32>(var_2.b.x, 2147483647i, u_input.a, -2147483647i), var_2.d)), reverseBits(vec3<u32>(1u, 1u, 1u)), !vec3<bool>(global2.x, var_1.a, true)))), 10u)];
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(-676f, 382f), _wgslsmith_f_op_f32(f32(-1f) * -128f), _wgslsmith_f_op_f32(f32(-1f) * -797f)), vec3<f32>(-495f, _wgslsmith_f_op_f32(abs(-1444f)), _wgslsmith_f_op_f32(f32(-1f) * -1195f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1107f, -1455f, -1000f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1724f, -115f, -1573f), vec3<f32>(-676f, 567f, -2546f))), !vec3<bool>(var_2.a, true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1562f))));
}

