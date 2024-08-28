struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(vec4<bool>(true, false, true, false), Struct_2(vec2<f32>(-1267f, 809f), vec2<bool>(false, true), Struct_1(-29182i)), 7098u, 81u), Struct_4(vec4<bool>(true, false, false, true), Struct_2(vec2<f32>(-835f, -585f), vec2<bool>(true, false), Struct_1(44812i)), 15429u, 3277u), Struct_4(vec4<bool>(false, true, false, false), Struct_2(vec2<f32>(930f, 1029f), vec2<bool>(true, true), Struct_1(-31033i)), 59978u, 20809u), Struct_4(vec4<bool>(true, false, false, true), Struct_2(vec2<f32>(1201f, 389f), vec2<bool>(false, false), Struct_1(-22701i)), 0u, 0u), Struct_4(vec4<bool>(false, true, true, false), Struct_2(vec2<f32>(979f, 217f), vec2<bool>(true, true), Struct_1(6473i)), 1u, 1u), Struct_4(vec4<bool>(false, false, true, false), Struct_2(vec2<f32>(489f, -1173f), vec2<bool>(true, true), Struct_1(62167i)), 7954u, 4294967295u), Struct_4(vec4<bool>(true, true, true, false), Struct_2(vec2<f32>(-300f, 576f), vec2<bool>(true, false), Struct_1(i32(-2147483648))), 4294967295u, 24886u), Struct_4(vec4<bool>(false, true, false, true), Struct_2(vec2<f32>(522f, -1000f), vec2<bool>(true, true), Struct_1(-18228i)), 8688u, 92911u), Struct_4(vec4<bool>(true, false, true, true), Struct_2(vec2<f32>(924f, -274f), vec2<bool>(false, true), Struct_1(-13448i)), 4294967295u, 4294967295u), Struct_4(vec4<bool>(true, false, true, true), Struct_2(vec2<f32>(-1652f, 491f), vec2<bool>(true, false), Struct_1(1i)), 24762u, 53062u), Struct_4(vec4<bool>(true, false, true, false), Struct_2(vec2<f32>(1404f, 222f), vec2<bool>(false, true), Struct_1(28811i)), 5237u, 109026u), Struct_4(vec4<bool>(true, false, true, false), Struct_2(vec2<f32>(239f, -1195f), vec2<bool>(false, false), Struct_1(33724i)), 4294967295u, 24062u), Struct_4(vec4<bool>(false, false, true, false), Struct_2(vec2<f32>(2002f, -1497f), vec2<bool>(false, true), Struct_1(-43015i)), 4294967295u, 1u), Struct_4(vec4<bool>(false, false, false, true), Struct_2(vec2<f32>(817f, -1104f), vec2<bool>(true, true), Struct_1(-16800i)), 0u, 30998u), Struct_4(vec4<bool>(true, false, false, false), Struct_2(vec2<f32>(1635f, -781f), vec2<bool>(true, false), Struct_1(1i)), 41621u, 60959u), Struct_4(vec4<bool>(true, false, false, true), Struct_2(vec2<f32>(-1263f, -1000f), vec2<bool>(false, false), Struct_1(1i)), 1u, 54313u), Struct_4(vec4<bool>(false, false, true, false), Struct_2(vec2<f32>(877f, -244f), vec2<bool>(false, false), Struct_1(2147483647i)), 64074u, 1u), Struct_4(vec4<bool>(false, false, false, false), Struct_2(vec2<f32>(800f, -110f), vec2<bool>(false, false), Struct_1(-21931i)), 0u, 0u), Struct_4(vec4<bool>(false, true, false, true), Struct_2(vec2<f32>(-1000f, -617f), vec2<bool>(true, false), Struct_1(-21031i)), 68774u, 0u), Struct_4(vec4<bool>(true, true, false, true), Struct_2(vec2<f32>(-676f, 210f), vec2<bool>(false, true), Struct_1(-25676i)), 0u, 0u), Struct_4(vec4<bool>(true, false, true, false), Struct_2(vec2<f32>(189f, -454f), vec2<bool>(false, true), Struct_1(26514i)), 1u, 61599u), Struct_4(vec4<bool>(false, false, true, true), Struct_2(vec2<f32>(-1000f, -931f), vec2<bool>(false, false), Struct_1(-5210i)), 58661u, 0u), Struct_4(vec4<bool>(true, true, false, true), Struct_2(vec2<f32>(-474f, 3176f), vec2<bool>(true, true), Struct_1(-343i)), 1u, 9642u), Struct_4(vec4<bool>(true, true, true, true), Struct_2(vec2<f32>(-552f, 661f), vec2<bool>(false, true), Struct_1(39238i)), 0u, 4294967295u), Struct_4(vec4<bool>(true, false, false, true), Struct_2(vec2<f32>(1000f, -752f), vec2<bool>(false, true), Struct_1(-27493i)), 1u, 79449u), Struct_4(vec4<bool>(true, true, true, false), Struct_2(vec2<f32>(-2220f, -132f), vec2<bool>(true, true), Struct_1(-105116i)), 4294967295u, 76925u), Struct_4(vec4<bool>(true, true, true, false), Struct_2(vec2<f32>(-1000f, 137f), vec2<bool>(false, false), Struct_1(-1i)), 35952u, 116275u), Struct_4(vec4<bool>(true, false, false, true), Struct_2(vec2<f32>(-158f, -1865f), vec2<bool>(false, true), Struct_1(20953i)), 70755u, 1u));

var<private> global2: i32 = 27037i;

var<private> global3: bool;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_div_f32(1328f, arg_0.c.b.a.x);
    global4 = 2147483647i;
    global2 = _wgslsmith_dot_vec3_i32(~(vec3<i32>(-10718i, u_input.b, 1i) | vec3<i32>(i32(-1i) * -27935i, ~u_input.c, ~arg_0.c.b.c.a)), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.b, arg_0.c.b.c.a, reverseBits(u_input.c)), select(countOneBits(-vec3<i32>(1i, 15596i, -2147483647i)), -vec3<i32>(u_input.b, u_input.c, u_input.c), arg_0.b.x)));
    var var_1 = select(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.d, firstLeadingBit(u_input.d)) ^ ~0u, _wgslsmith_dot_vec4_u32(max(min(u_input.d, u_input.d), u_input.d), ~vec4<u32>(u_input.a.x, u_input.e, arg_0.c.d, 1u) | vec4<u32>(u_input.d.x, arg_0.c.d, 4294967295u, arg_0.c.c))), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.wz, select(u_input.a, _wgslsmith_sub_vec2_u32(u_input.d.yw, vec2<u32>(8988u, u_input.a.x)), select(arg_1, global0.x, global0.x))), ~(vec2<u32>(arg_0.c.d, u_input.e) >> (reverseBits(vec2<u32>(arg_0.c.d, arg_0.c.d)) % vec2<u32>(32u)))), any(select(vec2<bool>(false, arg_1), !arg_0.b.zz, arg_0.b.zx)) | !(true & (u_input.d.x <= u_input.e)));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a + -894f), _wgslsmith_div_f32(-612f, var_0))), 1f))), vec4<bool>(true, select(arg_0.b.x, !any(arg_0.c.a), u_input.e > _wgslsmith_mult_u32(arg_0.c.c, 27868u)), all(arg_0.c.a.ywz), -2147483647i > (_wgslsmith_add_i32(-1i, 2147483647i) & _wgslsmith_sub_i32(36415i, arg_0.c.b.c.a))), Struct_4(select(select(select(arg_0.b, arg_0.b, true), arg_0.b, false), !select(arg_0.b, vec4<bool>(false, arg_0.b.x, arg_1, false), arg_1), all(vec4<bool>(arg_0.c.b.b.x, global0.x, arg_0.c.a.x, arg_1))), arg_0.c.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e, u_input.a.x, var_1.x), vec3<u32>(6825u, 0u, 25755u)) >> (40432u % 32u), 1u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.c.b.a.x)) + 1980f)))) - 785f);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = all(!(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), global0.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_5(-889f, vec4<bool>(false, global0.x, global0.x, global0.x), Struct_4(vec4<bool>(true, true, false, false), Struct_2(vec2<f32>(-1149f, -1702f), vec2<bool>(true, true), Struct_1(2147483647i)), u_input.d.x, 21458u)), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(629f)) + -1185f)))));
    global3 = !all(select(vec2<bool>(false, !global0.x), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), vec2<bool>(global0.x, false)), !select(vec2<bool>(false, false), vec2<bool>(global0.x, global0.x), false)));
    let var_2 = Struct_5(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_1, var_1))))))), !vec4<bool>(u_input.a.x < (u_input.a.x | 0u), all(!vec3<bool>(global0.x, true, true)), false, true), Struct_4(select(!select(vec4<bool>(false, true, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, false), true), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), !global0.x), !select(global0.x, global0.x, true)), Struct_2(vec2<f32>(var_1, _wgslsmith_f_op_f32(-var_1)), select(select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), true), arg_2), u_input.d.x << (~(~u_input.e) % 32u), ~(~24728u) ^ firstTrailingBit(83123u)));
    global4 = 0i;
    return select(select(var_2.c.a.wzw, select(vec3<bool>(true, any(var_2.b.zx), false), vec3<bool>(any(var_2.c.a.wyz), global0.x, false), !(!var_2.c.b.b.x)), var_2.b.wzw), !(!select(vec3<bool>(true, global0.x, var_2.b.x), vec3<bool>(true, true, true), var_2.c.a.zww)), 2147483647i != u_input.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> i32 {
    let var_0 = select(global0.x, true, true);
    global0 = vec2<bool>(true, var_0);
    var var_1 = select(func_2(_wgslsmith_sub_vec2_i32(arg_1, -vec2<i32>(arg_1.x, arg_1.x)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, _wgslsmith_div_i32(46511i, u_input.b), 0i, ~1i), -(~vec4<i32>(arg_1.x, u_input.b, 1i, arg_1.x))), Struct_1(countOneBits(-4660i))), vec3<bool>(235f < arg_0.x, global0.x, false), !(!var_0));
    let var_2 = !(!(any(vec2<bool>(true, var_0)) || true));
    global0 = var_1.zy;
    return -16683i;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = firstTrailingBit(~(~_wgslsmith_mult_i32(~arg_0.a, -arg_0.a)));
    global2 = arg_0.a;
    global2 = 1i;
    return Struct_3(847f, vec2<bool>(func_2(reverseBits(vec2<i32>(u_input.b, -33171i)), vec4<i32>(arg_0.a, 0i, 2147483647i, -2147483647i), Struct_1(-2147483647i)).x & true, !(!(!global0.x))), _wgslsmith_clamp_vec4_i32(-abs(vec4<i32>(arg_0.a, u_input.c, 13866i, u_input.c)), firstLeadingBit(vec4<i32>(u_input.c, u_input.c, -26603i, 2147483647i)) | vec4<i32>(1i, -18354i, 0i, 1i), min(-vec4<i32>(2147483647i, 94773i, 0i, -42218i), ~vec4<i32>(arg_0.a, -2147483647i, u_input.b, u_input.b))) ^ ~_wgslsmith_sub_vec4_i32(~vec4<i32>(-35221i, u_input.b, arg_0.a, u_input.c), vec4<i32>(arg_0.a, u_input.c, -560i, u_input.c)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(831f, -1056f))), !select(!vec2<bool>(true, global0.x), vec2<bool>(true, global0.x), func_2(vec2<i32>(2147483647i, 1i), vec4<i32>(arg_0.a, -18312i, u_input.c, arg_0.a), Struct_1(arg_0.a)).xz), arg_0), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(u_input.c & func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-476f, 304f, 693f) + vec3<f32>(-259f, 659f, -2932f)), ~vec2<i32>(u_input.c, -20508i))));
    let var_1 = -1i;
    var var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d, u_input.d), vec4<u32>(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.e, u_input.d.x), u_input.d.wzy), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 17711u, 10092u, u_input.e), u_input.d), ~u_input.d)), (_wgslsmith_add_u32(u_input.d.x, 4294967295u) & u_input.e) << ((firstTrailingBit(16312u) ^ ~4294967295u) % 32u), ~(u_input.d.x << ((0u >> (u_input.d.x % 32u)) % 32u)), select((4294967295u << (0u % 32u)) | (u_input.d.x ^ 92854u), ~u_input.e, var_0.b.x)));
    let var_3 = u_input.a.x;
    global3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2191f, var_0.a, 687f, 489f)), vec4<f32>(var_0.a, var_0.a, 668f, 603f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(593f, var_0.a, var_0.a, var_0.d.a.x)))), vec3<u32>(97453u, ~(~u_input.e), ~(~1u)));
}

