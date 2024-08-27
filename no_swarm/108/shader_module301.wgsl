struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, false, false, true), 351f), vec4<bool>(false, false, true, true), vec3<bool>(true, false, true), Struct_1(vec4<bool>(false, true, false, true), -1000f), vec3<u32>(1u, 0u, 36158u));

var<private> global1: Struct_3 = Struct_3(false, true, 1u, 317f);

var<private> global2: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(true, true, 0u, 536f), Struct_3(true, false, 4294967295u, 641f), Struct_3(false, true, 1u, -1694f), Struct_3(false, false, 63000u, 725f), Struct_3(true, false, 4294967295u, 448f), Struct_3(false, false, 64670u, 385f), Struct_3(false, false, 4294967295u, -860f), Struct_3(false, true, 7298u, -1558f), Struct_3(false, false, 4294967295u, 439f), Struct_3(false, false, 95379u, -552f), Struct_3(true, false, 56143u, 1620f), Struct_3(true, true, 0u, -164f), Struct_3(true, true, 37937u, -860f), Struct_3(false, true, 4294967295u, -737f), Struct_3(true, false, 5311u, 640f), Struct_3(true, false, 69036u, 1479f), Struct_3(true, true, 90319u, 1304f), Struct_3(true, false, 0u, -2102f), Struct_3(true, true, 9991u, 320f), Struct_3(true, true, 4294967295u, 161f));

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<bool>(true, false, true, false), -212f), Struct_1(vec4<bool>(false, false, true, false), 351f), Struct_1(vec4<bool>(true, true, true, true), -657f), Struct_1(vec4<bool>(true, false, true, true), -1055f), Struct_1(vec4<bool>(true, false, true, false), -941f), Struct_1(vec4<bool>(true, false, false, true), -2082f), Struct_1(vec4<bool>(true, false, false, true), -408f), Struct_1(vec4<bool>(false, false, true, false), 1146f), Struct_1(vec4<bool>(false, true, false, false), -1249f), Struct_1(vec4<bool>(true, true, true, true), -899f), Struct_1(vec4<bool>(true, false, true, false), 268f), Struct_1(vec4<bool>(false, true, false, true), -1183f), Struct_1(vec4<bool>(false, true, true, false), -1031f), Struct_1(vec4<bool>(false, true, true, true), 108f), Struct_1(vec4<bool>(true, false, false, true), 1168f), Struct_1(vec4<bool>(false, true, true, false), 1441f), Struct_1(vec4<bool>(true, true, true, false), 1246f), Struct_1(vec4<bool>(true, true, false, false), 2395f), Struct_1(vec4<bool>(false, true, true, false), -276f), Struct_1(vec4<bool>(true, true, false, true), 587f), Struct_1(vec4<bool>(false, true, false, true), -808f), Struct_1(vec4<bool>(false, false, true, false), 765f), Struct_1(vec4<bool>(false, false, true, true), 1061f));

var<private> global4: array<Struct_1, 22>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    var var_0 = u_input.a;
    global1 = Struct_3(!global1.b, true, ~0u, 330f);
    let var_1 = reverseBits(global0.e.x);
    let var_2 = vec4<i32>(i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(51012i, 2147483647i, 2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, -21419i, 1i)), 0i), u_input.a, _wgslsmith_mod_i32(~_wgslsmith_mult_i32(~u_input.a, _wgslsmith_add_i32(37574i, 1i)), u_input.a), u_input.a);
    let var_3 = -1280f;
    return 460f;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = arg_1.c.x;
    let var_1 = arg_1;
    global3 = array<Struct_1, 23>();
    global0 = Struct_2(Struct_1(vec4<bool>(_wgslsmith_f_op_f32(func_3()) < _wgslsmith_f_op_f32(func_3()), true, false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1142f))), !arg_0.a.a, global0.b.zzy, global4[_wgslsmith_index_u32(global1.c << (abs(~u_input.c.x) % 32u), 22u)], _wgslsmith_sub_vec3_u32(vec3<u32>(18812u, ~_wgslsmith_dot_vec2_u32(var_1.d, var_1.d), 9354u), firstTrailingBit(arg_1.b.e)));
    return !var_1.b.d.a;
}

fn func_1(arg_0: vec4<u32>) -> vec4<i32> {
    let var_0 = !vec4<bool>(true, global1.b, global1.b, !((-1i <= u_input.a) && all(global0.b.zz)));
    let var_1 = Struct_2(Struct_1(!(!vec4<bool>(false, false, false, var_0.x)), global1.d), !select(select(select(vec4<bool>(global1.b, global1.a, global0.b.x, false), var_0, global0.a.a), vec4<bool>(false, true, false, false), global1.a), vec4<bool>(select(true, global1.a, false), var_0.x, true, true), func_2(Struct_2(global0.d, var_0, vec3<bool>(true, var_0.x, global0.c.x), Struct_1(vec4<bool>(true, global0.b.x, true, true), -920f), vec3<u32>(u_input.c.x, global0.e.x, arg_0.x)), Struct_4(vec4<i32>(u_input.a, -23510i, -1i, u_input.a), Struct_2(Struct_1(var_0, -277f), global0.a.a, var_0.zwy, Struct_1(global0.a.a, global1.d), vec3<u32>(arg_0.x, u_input.c.x, global0.e.x)), global0.b.wz, global0.e.yx))), vec3<bool>(global0.c.x, global0.b.x, true), Struct_1(select(global0.b, !vec4<bool>(true, global0.d.a.x, global1.a, false), global1.d >= -905f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, global1.d, true)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d, global0.d.b) + _wgslsmith_f_op_f32(-1000f - -418f)))), vec3<u32>(_wgslsmith_clamp_u32(min(global0.e.x ^ u_input.b, u_input.b), ~u_input.c.x, 0u), 1u ^ _wgslsmith_div_u32(global1.c, _wgslsmith_add_u32(1u, global0.e.x)), ~arg_0.x));
    let var_2 = Struct_4(vec4<i32>(-1i) * -min(-vec4<i32>(u_input.a, 17248i, -1i, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), vec4<i32>(1i, u_input.a, 13899i, 0i))), var_1, select(!(!var_0.xy), vec2<bool>(var_1.a.a.x, !any(vec4<bool>(var_1.d.a.x, false, var_0.x, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.b), _wgslsmith_div_f32(363f, global1.d)) <= _wgslsmith_div_f32(-738f, var_1.d.b)), global0.e.xx);
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(379f, _wgslsmith_f_op_f32(max(var_2.b.a.b, var_1.d.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.b)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -991f), _wgslsmith_f_op_f32(abs(1352f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_2.b.d.b))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, var_2.b.d.b, global0.d.b)))))));
    let var_4 = vec4<u32>(40030u, _wgslsmith_clamp_u32(global0.e.x, ~(~4294967295u), ~1u), var_2.d.x, global0.e.x);
    return _wgslsmith_clamp_vec4_i32(~(abs(_wgslsmith_add_vec4_i32(var_2.a, vec4<i32>(9361i, u_input.a, -9903i, var_2.a.x))) ^ ((vec4<i32>(-1i, 1i, var_2.a.x, u_input.a) << (vec4<u32>(13700u, var_2.b.e.x, var_1.e.x, 37171u) % vec4<u32>(32u))) ^ var_2.a)), vec4<i32>(36388i, abs(-_wgslsmith_mult_i32(var_2.a.x, u_input.a)), -(~_wgslsmith_clamp_i32(var_2.a.x, 1i, 0i)), abs(-(~(-31176i)))), ~((vec4<i32>(12107i, -1i, -12485i, var_2.a.x) | ~var_2.a) | min(~var_2.a, vec4<i32>(-2147483647i, var_2.a.x, 2147483647i, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(-func_1(vec4<u32>(u_input.c.x | global0.e.x, 50101u, global0.e.x, global1.c)), Struct_2(Struct_1(!(!vec4<bool>(global0.a.a.x, global0.b.x, global0.b.x, global1.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1278f, global1.d))))), select(select(!global0.a.a, vec4<bool>(false, global1.a, true, global1.b), vec4<bool>(global0.a.a.x, global0.a.a.x, global1.b, true)), select(global0.d.a, vec4<bool>(global1.b, true, false, false), !global0.a.a), !(!global0.b)), select(vec3<bool>(2566f >= global0.d.b, false, true), !global0.b.xyx, vec3<bool>(false, true, all(global0.a.a.zzy))), Struct_1(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global1.d) * global0.d.b)), ~u_input.c), !(!func_2(Struct_2(Struct_1(vec4<bool>(global0.a.a.x, true, false, global1.b), 904f), vec4<bool>(global1.a, true, global0.a.a.x, true), vec3<bool>(true, false, global1.b), global3[_wgslsmith_index_u32(25035u, 23u)], u_input.c), Struct_4(vec4<i32>(u_input.a, 0i, u_input.a, 4381i), Struct_2(global4[_wgslsmith_index_u32(global1.c, 22u)], vec4<bool>(false, false, global0.a.a.x, true), global0.a.a.wyw, Struct_1(global0.b, global0.d.b), u_input.c), global0.b.yz, vec2<u32>(1u, u_input.b))).wy), vec2<u32>(1u, 36371u));
    let var_1 = var_0.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~(-2147483647i | (var_0.a.x | var_0.a.x)), var_0.a.x, u_input.a), 0u);
}

