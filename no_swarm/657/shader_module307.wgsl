struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(1i, -1i, 0i));

var<private> global1: vec4<u32> = vec4<u32>(1u, 0u, 1u, 1u);

var<private> global2: vec3<bool>;

var<private> global3: vec3<f32> = vec3<f32>(1791f, 403f, -679f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = any(global2.xz);
    global1 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(countOneBits(22441u)), ~4294967295u), _wgslsmith_add_u32(3272u, 1u), ~(~max(u_input.a, u_input.a)), 29694u), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(15403u, _wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~37890u, u_input.b.x), ~(~vec4<u32>(u_input.a, 1u, 74490u, 22549u))), vec4<u32>(_wgslsmith_mult_u32(~global1.x, reverseBits(u_input.b.x)), ~global1.x, 25519u, min(28201u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4932u, 0u, 47378u))))));
    let var_1 = global1.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-358f)))))) + _wgslsmith_f_op_f32(f32(-1f) * -923f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.x))))) + global3.x);
    var_0 = !(!arg_0.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1200f) * _wgslsmith_f_op_f32(-arg_2))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0.a.x, arg_2)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -598f), arg_0.a.x), u_input.b.x >= global1.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.a, global3.zy)) + vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a.x + global3.x), _wgslsmith_f_op_f32(f32(-1f) * -328f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) * _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(global3.x, 990f), true), vec3<i32>(global0.a.x, 0i, global0.a.x), -817f, global3.x))))), all(vec3<bool>(!arg_0.b, var_0.b, true)));
    let var_2 = ~2147483647i ^ _wgslsmith_sub_i32(global0.a.x, -21980i);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x - -171f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 754f)), _wgslsmith_f_op_vec2_f32(-arg_0.a)))), true);
    global0 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -602f)));
}

fn func_4(arg_0: f32) -> Struct_2 {
    global2 = vec3<bool>(global2.x, true, any(global2.zz));
    let var_0 = true;
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1947f - 963f) - _wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(arg_0, -1498f), global2.x), global0.a, -786f, arg_0)))), arg_0), any(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(var_0, var_0)), all(vec3<bool>(var_0, true, var_0)), true), vec3<bool>(any(vec3<bool>(false, false, global2.x)), false, var_0))));
    let var_2 = Struct_3(var_1, ~_wgslsmith_div_vec4_i32(abs(vec4<i32>(global0.a.x, 2147483647i, global0.a.x, -2147483647i)) >> (~vec4<u32>(global1.x, 4294967295u, 53621u, 1u) % vec4<u32>(32u)), vec4<i32>(-global0.a.x, global0.a.x ^ 36910i, 13623i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, 2147483647i, -29100i), global0.a))), select(_wgslsmith_mod_vec3_i32(min(select(global0.a, vec3<i32>(global0.a.x, global0.a.x, global0.a.x), global2.x), vec3<i32>(-26537i, global0.a.x, global0.a.x) >> (u_input.b % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(global0.a.x, 2147483647i, global0.a.x), global0.a) >> ((vec3<u32>(0u, u_input.a, global1.x) | vec3<u32>(global1.x, u_input.a, 0u)) % vec3<u32>(32u))), ~(vec3<i32>(-1i) * -vec3<i32>(global0.a.x, 2147483647i, 7520i)), !(!vec3<bool>(var_0, global2.x, var_1.b))), Struct_2(max(vec3<i32>(~global0.a.x, _wgslsmith_sub_i32(global0.a.x, global0.a.x), global0.a.x | global0.a.x), reverseBits(~global0.a))), _wgslsmith_div_vec2_f32(global3.yx, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(640f, 532f)))), _wgslsmith_f_op_f32(floor(1218f)))));
    var var_3 = var_2;
    return Struct_2(-firstTrailingBit(vec3<i32>(global0.a.x, var_3.b.x, _wgslsmith_add_i32(var_2.b.x, 1i))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global1 = firstLeadingBit(~abs(~vec4<u32>(8797u, u_input.a, global1.x, u_input.b.x)) >> (vec4<u32>(58064u, global1.x, u_input.b.x, (28974u & u_input.b.x) >> (_wgslsmith_dot_vec2_u32(global1.xz, vec2<u32>(1111u, 0u)) % 32u)) % vec4<u32>(32u)));
    global0 = Struct_2(global0.a);
    let var_0 = global0.a.x;
    global0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(global3.zx, false), Struct_2(vec3<i32>(-14816i, 27644i, global0.a.x))))), arg_0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(select(-527f, arg_0, global2.x))))));
    let var_1 = 1i;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.zz)), global2.x & !(!any(global2.zz)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<f32>) -> Struct_3 {
    global1 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(max(countOneBits(vec4<u32>(u_input.b.x, 0u, u_input.a, u_input.b.x)), countOneBits(vec4<u32>(u_input.a, 1u, 24312u, 0u) >> (vec4<u32>(37998u, 2797u, 1u, global1.x) % vec4<u32>(32u)))), firstTrailingBit(select(vec4<u32>(50881u, 25255u, 1u, global1.x), vec4<u32>(1u, 4294967295u, 0u, 38728u), vec4<bool>(false, false, arg_0.b, true))) >> (~vec4<u32>(4294967295u, 0u, 19804u, 26136u) % vec4<u32>(32u))), ~(~(~vec4<u32>(1u, u_input.b.x, 35205u, u_input.b.x)) >> ((~vec4<u32>(11501u, 4294967295u, u_input.a, 0u) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 16776u, global1.x), vec4<u32>(0u, 72994u, 1u, u_input.b.x))) % vec4<u32>(32u))));
    var var_0 = Struct_2(_wgslsmith_sub_vec3_i32(firstLeadingBit(max(~global0.a, firstLeadingBit(global0.a))), _wgslsmith_add_vec3_i32(~global0.a, ~abs(global0.a))));
    global0 = Struct_2(vec3<i32>(arg_1.x, _wgslsmith_dot_vec3_i32(reverseBits(global0.a), vec3<i32>(var_0.a.x, 1i, -23313i)), ~35265i) >> (~vec3<u32>(~22948u, ~50083u, u_input.b.x) % vec3<u32>(32u)));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1206f, 668f)), _wgslsmith_f_op_vec2_f32(arg_0.a * arg_2), any(vec4<bool>(global2.x, true, true, arg_0.b)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-851f, -917f) - vec2<f32>(635f, global3.x))))), arg_0.b || true), ~countOneBits(vec4<i32>(21381i, global0.a.x, arg_1.x, var_0.a.x) << ((vec4<u32>(global1.x, global1.x, u_input.a, global1.x) ^ vec4<u32>(global1.x, 4294967295u, 7300u, global1.x)) % vec4<u32>(32u))), ~global0.a, Struct_2(global0.a), _wgslsmith_f_op_vec2_f32(max(global3.xx, _wgslsmith_f_op_vec2_f32(-arg_2))));
    var_0 = Struct_2(-(~var_0.a));
    return Struct_3(func_1(_wgslsmith_f_op_f32(-arg_2.x)), vec4<i32>(_wgslsmith_div_i32(75868i, var_1.b.x), ~(-9100i), abs(arg_1.x), -20183i), firstLeadingBit(~_wgslsmith_sub_vec3_i32(global0.a, _wgslsmith_add_vec3_i32(var_0.a, vec3<i32>(32210i, var_1.c.x, global0.a.x)))), var_1.d, var_1.e);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = vec2<bool>(true && arg_1.a.b, all(vec4<bool>(true, true, true, true)));
    let var_1 = func_5(arg_1.a, (arg_0.c.zy << (abs(vec2<u32>(global1.x, 940u) | vec2<u32>(4294967295u, u_input.b.x)) % vec2<u32>(32u))) ^ vec2<i32>(arg_2.x, _wgslsmith_mod_i32(global0.a.x, -arg_1.d.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -115f)) - global3.xx));
    global3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.x, arg_1.e.x, -304f), vec3<f32>(357f, 584f, var_1.e.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-308f, global3.x, arg_1.e.x) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.a.x, -789f, -561f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e.x, global3.x, 1011f)) * vec3<f32>(_wgslsmith_f_op_f32(round(-458f)), arg_1.a.a.x, _wgslsmith_f_op_f32(arg_1.e.x - 1560f))))));
    var var_2 = func_5(arg_0.a, ~arg_2.yx, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_1.e.x, -463f, arg_0.a.b)), _wgslsmith_f_op_f32(ceil(global3.x)))), -951f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.x, _wgslsmith_f_op_f32(arg_1.e.x - 1137f)) * arg_1.e))).d;
    var var_3 = global1.yz;
    return var_1.d;
}

fn func_7(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_2 {
    return Struct_2(~arg_2.b.yyy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1469f, global3.x)), !global2.x), min(vec4<i32>(global0.a.x, _wgslsmith_dot_vec2_i32(global0.a.xy, global0.a.xy), global0.a.x, 1i), ~(~vec4<i32>(global0.a.x, global0.a.x, global0.a.x, -24285i))), -vec3<i32>(1i, ~0i, global0.a.x), func_6(func_5(func_1(225f), vec2<i32>(global0.a.x, global0.a.x), vec2<f32>(global3.x, global3.x)), Struct_3(Struct_1(vec2<f32>(global3.x, global3.x), false), vec4<i32>(global0.a.x, global0.a.x, global0.a.x, 0i), select(global0.a, global0.a, vec3<bool>(false, global2.x, global2.x)), func_5(Struct_1(vec2<f32>(global3.x, global3.x), global2.x), global0.a.xy, vec2<f32>(1000f, global3.x)).d, vec2<f32>(547f, global3.x)), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-18450i, -33289i, global0.a.x, 2147483647i)), ~vec4<i32>(0i, 2147483647i, 1i, 18007i))), _wgslsmith_f_op_vec2_f32(-global3.xx)), func_5(func_5(Struct_1(_wgslsmith_div_vec2_f32(global3.zz, global3.zx), true), -global0.a.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-317f, -1000f))))).a, _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-18642i, 55356i), _wgslsmith_div_vec2_i32(vec2<i32>(-62774i, 9533i), vec2<i32>(-13132i, -1i))), global3.zx).d, func_5(func_5(func_5(func_5(Struct_1(global3.yz, true), global0.a.zy, vec2<f32>(675f, 2609f)).a, _wgslsmith_div_vec2_i32(global0.a.yy, global0.a.zx), _wgslsmith_div_vec2_f32(vec2<f32>(121f, global3.x), vec2<f32>(260f, 2483f))).a, reverseBits(global0.a.yx) << (u_input.b.xx % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -976f) * global3.yy)).a, vec2<i32>((global0.a.x << (9360u % 32u)) | _wgslsmith_mod_i32(-60075i, global0.a.x), -global0.a.x), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(211f, global3.x), -710f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), select(u_input.b, u_input.b, !func_1(_wgslsmith_div_f32(global3.x, global3.x)).b));
    let var_0 = 62603u;
    let var_1 = select(!global2.yz, !(!vec2<bool>(global2.x, true)), false);
    let var_2 = Struct_2(global0.a);
    global1 = ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(5797u, 60035u, 62975u, 4294967295u)), ~(vec4<u32>(global1.x, u_input.a, u_input.a, 4294967295u) | vec4<u32>(1u, u_input.a, var_0, 1u))) ^ countOneBits(~vec4<u32>(var_0, _wgslsmith_dot_vec4_u32(vec4<u32>(48558u, global1.x, 1u, global1.x), vec4<u32>(u_input.a, global1.x, 11102u, 1u)), 33350u, 47405u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), global3.x, 999f, _wgslsmith_f_op_f32(select(-754f, func_1(-1818f).a.x, global2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 616f, global3.x, 1167f), vec4<f32>(global3.x, global3.x, 902f, global3.x))) * vec4<f32>(global3.x, global3.x, global3.x, global3.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(166f, -1091f, -265f, global3.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global3.x, 778f), -2594f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(step(global3.x, -802f))))), ~u_input.a, ~vec4<i32>(_wgslsmith_dot_vec3_i32(-global0.a, abs(vec3<i32>(0i, 33562i, global0.a.x))), ~(-72168i), -(~0i), var_2.a.x));
}

