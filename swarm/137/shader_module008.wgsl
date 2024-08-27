struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14>;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec3<i32>(i32(-2147483648), 39946i, -22583i), vec4<bool>(false, true, false, true)), Struct_2(vec3<i32>(-1i, -1i, 9231i), vec4<bool>(false, true, true, true)), Struct_2(vec3<i32>(-5697i, 2147483647i, -1i), vec4<bool>(true, true, false, true)), Struct_2(vec3<i32>(-21905i, -24418i, 12951i), vec4<bool>(false, false, true, false)), Struct_2(vec3<i32>(-16280i, 1i, 9123i), vec4<bool>(false, true, true, false)), Struct_2(vec3<i32>(5003i, i32(-2147483648), -23234i), vec4<bool>(true, true, true, false)), Struct_2(vec3<i32>(-1i, -575i, -19144i), vec4<bool>(true, false, false, true)), Struct_2(vec3<i32>(59072i, i32(-2147483648), 0i), vec4<bool>(true, false, false, true)), Struct_2(vec3<i32>(1i, -1i, -7958i), vec4<bool>(false, true, true, false)), Struct_2(vec3<i32>(37007i, 1i, -21012i), vec4<bool>(true, false, false, true)), Struct_2(vec3<i32>(1i, i32(-2147483648), 2147483647i), vec4<bool>(true, false, true, false)), Struct_2(vec3<i32>(-28458i, -1i, 5292i), vec4<bool>(true, false, true, true)), Struct_2(vec3<i32>(-1i, -1i, -52147i), vec4<bool>(false, true, false, false)), Struct_2(vec3<i32>(11960i, 27945i, 1i), vec4<bool>(true, true, true, true)), Struct_2(vec3<i32>(57880i, 50083i, 6622i), vec4<bool>(false, false, false, true)), Struct_2(vec3<i32>(i32(-2147483648), -12913i, 0i), vec4<bool>(true, true, true, false)), Struct_2(vec3<i32>(-29326i, -1i, -1i), vec4<bool>(false, true, false, true)), Struct_2(vec3<i32>(i32(-2147483648), 0i, -7281i), vec4<bool>(false, true, true, false)), Struct_2(vec3<i32>(-20591i, i32(-2147483648), 9954i), vec4<bool>(true, false, true, false)), Struct_2(vec3<i32>(29307i, 2147483647i, -26620i), vec4<bool>(true, true, false, false)), Struct_2(vec3<i32>(17889i, 25144i, 46434i), vec4<bool>(true, false, true, true)), Struct_2(vec3<i32>(-1i, -18426i, 2147483647i), vec4<bool>(false, false, false, false)), Struct_2(vec3<i32>(2147483647i, -9472i, 0i), vec4<bool>(false, false, true, false)), Struct_2(vec3<i32>(29584i, -1i, -21603i), vec4<bool>(true, true, false, true)), Struct_2(vec3<i32>(0i, 64147i, 22357i), vec4<bool>(true, false, false, false)));

var<private> global2: array<i32, 8> = array<i32, 8>(67986i, 44358i, -19858i, 2147483647i, -28410i, 46138i, 1i, 2147483647i);

var<private> global3: vec3<f32>;

var<private> global4: array<i32, 3>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    return Struct_3(_wgslsmith_mult_u32(29565u, u_input.a.x));
}

fn func_3() -> i32 {
    let var_0 = vec3<u32>(~countOneBits(reverseBits(1u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.d.x, 4294967295u), _wgslsmith_mod_u32(4294967295u, u_input.a.x)) ^ 0u, ~4294967295u) ^ ~(~_wgslsmith_mult_vec3_u32(u_input.d, ~u_input.d));
    global4 = array<i32, 3>();
    let var_1 = !(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(24054u, 8u)] <= -22370i, false, any(vec4<bool>(true, true, false, true)))));
    var var_2 = vec4<bool>(true, any(var_1) || all(vec2<bool>(all(vec4<bool>(true, var_1.x, var_1.x, var_1.x)), var_1.x)), var_1.x, any(!vec3<bool>(true, true, var_1.x)));
    var var_3 = ~reverseBits(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(~var_0.x, 0u, 21690u, 4294967295u)));
    return global2[_wgslsmith_index_u32(~abs(firstTrailingBit(u_input.c.x)), 8u)];
}

fn func_2() -> Struct_1 {
    global4 = array<i32, 3>();
    global2 = array<i32, 8>();
    let var_0 = u_input.c.zyx;
    global2 = array<i32, 8>();
    let var_1 = Struct_1(reverseBits(abs(func_3())), _wgslsmith_mod_i32(-2147483647i, 1i), firstLeadingBit(select(abs(~vec2<u32>(62688u, 4294967295u)), var_0.yy, global0[_wgslsmith_index_u32(u_input.a.x, 14u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-189f - -424f), global3.x, _wgslsmith_f_op_f32(min(-714f, -1385f)), _wgslsmith_f_op_f32(round(-979f))))));
    return Struct_1(~_wgslsmith_sub_i32(select(-10587i, ~1i, true), ~(-2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(global2[_wgslsmith_index_u32(var_0.x, 8u)], var_1.a, global4[_wgslsmith_index_u32(1u, 3u)], 0i) >> (u_input.a % vec4<u32>(32u))), ~select(vec4<i32>(2147483647i, global4[_wgslsmith_index_u32(33093u, 3u)], -54605i, global2[_wgslsmith_index_u32(u_input.c.x, 8u)]), abs(vec4<i32>(1i, var_1.b, 51810i, 60117i)), vec4<bool>(true, true, true, true))), _wgslsmith_mult_vec2_u32(var_0.yx, vec2<u32>(var_1.c.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.x, u_input.d.x), var_0.zx))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_1.d))), var_1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.d.x, u_input.a.x), u_input.c), select(vec4<u32>(u_input.a.x, u_input.d.x, 1u, 31394u), ~vec4<u32>(u_input.a.x, u_input.a.x, 127677u, u_input.a.x), false)) >> (_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(~u_input.d.x, 31988u << (u_input.a.x % 32u), 1u, u_input.a.x)) % vec4<u32>(32u)));
    let var_1 = -global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x & ~4294967295u, 78103u), ~(~_wgslsmith_div_u32(u_input.c.x, 24567u))), 3u)];
    var var_2 = func_1(vec2<u32>(~38080u, ~(~u_input.c.x)));
    let var_3 = func_2();
    var var_4 = vec4<bool>(all(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, firstLeadingBit(var_0.x)), 14u)]) | false, select(false, false, true), true, true || (1i < min(-2147483647i, var_3.b)));
    let var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.d.x + _wgslsmith_f_op_f32(-var_3.d.x))))));
    let var_6 = global0[_wgslsmith_index_u32(var_3.c.x, 14u)];
    var var_7 = Struct_3(~var_0.x << (_wgslsmith_mult_u32(0u, firstTrailingBit(75452u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yyx, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -761f)))), _wgslsmith_f_op_f32(var_5 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_5, var_3.d.x)))), -256f), var_3.d.x);
}

