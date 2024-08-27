struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(46104u, 0u, 4294967295u, 1u);

var<private> global1: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(-828f, 987f), vec2<f32>(-2120f, -184f));

var<private> global2: array<Struct_5, 13>;

var<private> global3: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> bool {
    global0 = u_input.a;
    global1 = array<vec2<f32>, 2>();
    var var_0 = true;
    var var_1 = 7392u >= u_input.e;
    let var_2 = select(firstLeadingBit(u_input.a), vec4<u32>(~global0.x, 59591u, ~global0.x, _wgslsmith_clamp_u32(~(~1u), ~global0.x, global3.d.e.e)), vec4<bool>(true, true, global3.c.x, true));
    return true;
}

fn func_3() -> vec2<bool> {
    global2 = array<Struct_5, 13>();
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(abs(_wgslsmith_clamp_u32(~global0.x, _wgslsmith_div_u32(4294967295u, 1u), 16455u)), _wgslsmith_add_u32(~16586u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(global3.e.a.e, 0u), global0.yx, global3.c.x), vec2<u32>(u_input.e, global0.x) | vec2<u32>(global3.d.e.e, 0u))), 0u, ~1u), u_input.a);
    global1 = array<vec2<f32>, 2>();
    var var_0 = firstLeadingBit(~countOneBits(abs(1u)));
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 13u)];
    return global3.e.c;
}

fn func_1() -> Struct_2 {
    var var_0 = vec4<bool>(any(!select(!vec4<bool>(global3.c.x, false, global3.d.a.c.x, true), select(vec4<bool>(global3.e.c.x, false, true, global3.e.e.c.x), vec4<bool>(global3.d.c.x, true, global3.d.e.c.x, global3.d.c.x), global3.c.x), !vec4<bool>(true, false, true, global3.d.c.x))), !(func_2(Struct_3(global3.a, global3.b, global3.e.a.c.xz, Struct_2(Struct_1(-1141f, global3.d.a.d, global3.d.a.c, global3.d.e.d, 42418u), global3.d.e.a, global3.c, -6034i, global3.d.a), Struct_2(global3.e.a, -434f, global3.c, 0i, global3.e.e)), u_input.b.x) && (_wgslsmith_f_op_f32(select(global3.b, global3.e.a.a, false)) == _wgslsmith_f_op_f32(global3.b * -376f))), any(global3.d.a.c.zx), true);
    let var_1 = !global3.e.c.x;
    global3 = Struct_3(global3.a | global3.a, global3.b, vec2<bool>(all(func_3()), true), Struct_2(Struct_1(_wgslsmith_f_op_f32(-307f + -1000f), ~global3.e.e.b >> (firstLeadingBit(vec3<u32>(u_input.c.x, 1u, global3.d.a.e)) % vec3<u32>(32u)), global3.d.a.c, ~(-global3.e.e.d), global0.x), _wgslsmith_f_op_f32(ceil(483f)), vec2<bool>(!func_3().x, var_1), countOneBits(2147483647i), global3.e.a), global3.e);
    var var_2 = Struct_3(-abs(global3.a), _wgslsmith_f_op_f32(-1119f * 1506f), select(select(vec2<bool>(true, var_1), global3.d.e.c.xz, true), var_0.zz, var_0.yy), global3.d, Struct_2(global3.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.a.a))), select(!var_0.wy, vec2<bool>(false, var_0.x), var_1), max(min(0i, max(0i, u_input.d.x)), global3.a.x), Struct_1(_wgslsmith_f_op_f32(global3.e.b * global3.b), firstTrailingBit(-global3.e.e.d), var_0.zyz, vec3<i32>(_wgslsmith_div_i32(u_input.d.x, -2147483647i), countOneBits(global3.a.x), _wgslsmith_dot_vec2_i32(global3.a.ww, vec2<i32>(32600i, u_input.b.x))), _wgslsmith_clamp_u32(u_input.e ^ u_input.e, _wgslsmith_add_u32(u_input.c.x, global3.e.e.e), global3.e.a.e))));
    var_0 = vec4<bool>(all(select(vec3<bool>(false, any(global3.d.e.c), true), global3.d.a.c, select(!vec3<bool>(var_1, global3.e.a.c.x, false), global3.e.e.c, vec3<bool>(var_2.d.e.c.x, var_0.x, var_0.x)))), var_1, var_0.x, true);
    return Struct_2(global3.d.e, _wgslsmith_f_op_f32(-1960f * var_2.e.b), select(var_0.wz, var_0.zz, var_1), firstTrailingBit(u_input.b.x), var_2.d.e);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: Struct_2) -> f32 {
    global1 = array<vec2<f32>, 2>();
    global0 = u_input.a;
    global0 = countOneBits(u_input.a);
    let var_0 = func_2(Struct_3(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b, arg_0.yy), 1i << (~global3.d.a.e % 32u), -(~arg_3.a.b.x), _wgslsmith_div_i32(63331i, -2147483647i)), -485f, vec2<bool>(true, select(true, false, func_3().x)), Struct_2(func_1().e, global3.d.b, vec2<bool>(all(vec2<bool>(global3.e.e.c.x, true)), arg_2.x), _wgslsmith_clamp_i32(u_input.b.x, ~arg_3.d, global3.d.e.d.x), global3.d.a), Struct_2(Struct_1(_wgslsmith_f_op_f32(global3.d.a.a + -3348f), global3.d.a.d, !global3.d.a.c, global3.e.a.b, _wgslsmith_sub_u32(global3.d.a.e, 4294967295u)), _wgslsmith_f_op_f32(-global3.e.b), arg_2.xz, 91362i, func_1().a)), arg_3.d ^ -5574i);
    var var_1 = Struct_3(abs(global3.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-698f * 440f)))))), select(vec2<bool>(!(!arg_2.x), !arg_2.x), select(func_1().c, global3.e.e.c.xy, true), false), Struct_2(func_1().e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.a)) * _wgslsmith_f_op_f32(arg_3.b * 255f)), global3.d.c, 14206i, arg_3.a), Struct_2(func_1().e, _wgslsmith_f_op_f32(trunc(arg_1.x)), func_1().a.c.xx, _wgslsmith_mod_i32(1i, -(global3.a.x >> (global0.x % 32u))), func_1().a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(global3.b * global3.e.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-2096f * _wgslsmith_f_op_f32(func_4(vec3<i32>(~(-31134i) << (_wgslsmith_div_u32(0u, global0.x) % 32u), ~83559i, -global3.d.d), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(35938u, 107670u), global3.e.e.e), 2u)]), vec3<bool>((false & global3.e.e.c.x) != (global3.b < 1929f), !(!global3.c.x), abs(1u) == min(global0.x, u_input.a.x)), func_1())));
    let var_1 = func_1().e;
    var var_2 = -vec4<i32>(_wgslsmith_dot_vec4_i32(global3.a, vec4<i32>(1i, -40252i, -2147483647i, u_input.d.x)) | u_input.d.x, func_1().d, 2147483647i, _wgslsmith_div_i32(select(global3.a.x, -9445i, global3.d.c.x), -var_1.b.x)) << (~reverseBits(~_wgslsmith_div_vec4_u32(u_input.a, u_input.a)) % vec4<u32>(32u));
    var var_3 = !select(global3.d.a.c, vec3<bool>(!(var_1.c.x || var_1.c.x), any(var_1.c), global3.e.c.x), true || any(vec3<bool>(true, global3.c.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -1975i, reverseBits(2147483647i), -2147483647i) >> (countOneBits(select(vec3<u32>(u_input.e, 1u, global0.x), u_input.c, var_3.x)) % vec3<u32>(32u)), select(vec3<i32>(1i, global3.a.x, -19558i) & -vec3<i32>(global3.a.x, -34385i, global3.d.d), var_2.zwy, global3.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.e.a.a, -379f, 966f, 737f))))), select(firstTrailingBit(_wgslsmith_mult_i32(u_input.d.x, countOneBits(var_2.x))), -5372i << (global3.e.e.e % 32u), var_1.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.b)) - _wgslsmith_f_op_f32(-global3.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-538f, var_1.a)) + _wgslsmith_f_op_f32(-global3.b)))));
}

