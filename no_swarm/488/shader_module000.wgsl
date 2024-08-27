struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 6>;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<i32>(-16979i, -36027i), vec4<u32>(22916u, 1u, 79273u, 47962u)), Struct_1(vec2<i32>(0i, 31408i), vec4<u32>(63034u, 0u, 11289u, 50583u)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: i32) -> vec4<bool> {
    global2 = array<Struct_1, 2>();
    var var_0 = -29545i;
    var var_1 = 1u;
    var_0 = min(2147483647i, abs(_wgslsmith_dot_vec3_i32(u_input.d.yxz, u_input.d.wwx)));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1183f, global1.x))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(690f, -821f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2172f, global1.x)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 818f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -1000f) * vec2<f32>(global1.x, global1.x))))));
    return select(select(select(vec4<bool>(true, true, all(vec3<bool>(false, false, false)), true), vec4<bool>(select(false, false, true), all(vec2<bool>(false, false)), true, global1.x < global1.x), true), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, true, true), global1.x != 571f), vec4<bool>(true, true, all(vec4<bool>(true, true, false, true)), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, !any(vec3<bool>(true, false, false)), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, global1.x < global1.x, global1.x > -973f), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), _wgslsmith_div_i32(0i, arg_2 >> (arg_1.x % 32u)) > countOneBits(u_input.a.x));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = select(firstTrailingBit(u_input.d.yy), u_input.a, !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), global1.x, any(vec2<bool>(true, true)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-68886i, u_input.a.x), ~u_input.e.yz << (u_input.b.zz % vec2<u32>(32u))), vec4<u32>(u_input.b.x, countOneBits(~31390u), _wgslsmith_mod_u32(u_input.c.x, u_input.b.x), ~17020u)), global2[_wgslsmith_index_u32(select(u_input.c.x, u_input.c.x, all(func_3(vec2<i32>(u_input.e.x, -6441i), ~vec3<u32>(43180u, u_input.b.x, 1u), _wgslsmith_clamp_i32(1i, 20646i, 7504i)))), 2u)], true | !(any(vec4<bool>(false, true, true, true)) && true), Struct_1(~u_input.d.zy, reverseBits(vec4<u32>(u_input.b.x, 0u, u_input.c.x, 0u) >> ((vec4<u32>(50559u, 19160u, u_input.c.x, 1u) >> (vec4<u32>(1u, 4294967295u, 1u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)))), func_3(~u_input.e.xw, vec3<u32>(39709u, ~select(1u, 1u, false), ~(~u_input.b.x)), ~1i).yy);
    var var_2 = var_1.a;
    let var_3 = var_1.d.a.x;
    let var_4 = -1935i;
    return 36499u;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> bool {
    var var_0 = func_2(_wgslsmith_f_op_f32(-569f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x)))));
    var_0 = u_input.c.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -898f, _wgslsmith_f_op_f32(744f - -601f), global1.x))));
    var var_2 = global2[_wgslsmith_index_u32(abs(u_input.c.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 0u), _wgslsmith_sub_vec2_u32(u_input.c, ~u_input.c)) % 32u)), 2u)];
    var var_3 = Struct_2(global2[_wgslsmith_index_u32(max(select(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(31059u, var_2.b.x, u_input.c.x), u_input.b), false), var_2.b.x) | u_input.c.x, 2u)], Struct_1(-select(reverseBits(vec2<i32>(var_2.a.x, u_input.e.x)), vec2<i32>(u_input.e.x, 0i), true), _wgslsmith_add_vec4_u32(var_2.b, vec4<u32>(9861u, max(u_input.c.x, 0u), var_2.b.x, _wgslsmith_mod_u32(var_2.b.x, var_2.b.x)))), arg_1, global2[_wgslsmith_index_u32(var_2.b.x, 2u)], vec2<bool>(all(!vec3<bool>(arg_1, false, false)), arg_1));
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(u_input.d.x >= firstLeadingBit(_wgslsmith_mod_i32(1i, 33507i)), func_1(~vec3<i32>(u_input.e.x, u_input.a.x, -94549i), false) | any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), select(select(vec2<bool>(true, all(vec2<bool>(true, false))), select(vec2<bool>(true, true), func_3(vec2<i32>(u_input.d.x, 2147483647i), vec3<u32>(4294967295u, 1u, 99156u), 39440i).xz, true), true), vec2<bool>(true, _wgslsmith_f_op_f32(global1.x + global1.x) != -658f), vec2<bool>(true, true)), select(!(u_input.c.x >= u_input.b.x), !(u_input.d.x >= -12830i), true) & all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), func_3(vec2<i32>(-23107i, 5376i), u_input.b, u_input.a.x).wxy)));
    global1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, -474f)));
    let var_1 = abs(min(u_input.b, abs(select(u_input.b, vec3<u32>(3604u, 0u, u_input.c.x), var_0.x)) >> (~vec3<u32>(9259u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))));
    global0 = array<vec4<i32>, 6>();
    global1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, global1.x, var_0.x)) - _wgslsmith_div_f32(global1.x, -604f)) - 193f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1475f), 1236f, true)))), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(~((vec4<u32>(var_1.x, 32042u, u_input.b.x, 0u) & vec4<u32>(u_input.b.x, 0u, 1u, u_input.b.x)) & countOneBits(vec4<u32>(33854u, var_1.x, u_input.b.x, 57152u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 74764u, var_1.x, u_input.b.x), vec4<u32>(55478u, var_1.x, var_1.x, u_input.c.x)) << (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(40894u, 1u, 32095u, var_1.x), vec4<u32>(u_input.c.x, var_1.x, 1u, u_input.b.x))) % vec4<u32>(32u))), ~(~_wgslsmith_sub_i32(_wgslsmith_add_i32(-2924i, u_input.e.x), u_input.e.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, -192f, _wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1323f, -1664f, global1.x)))), vec2<u32>(18592u, var_1.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -858f, -741f, global1.x) * vec4<f32>(-1000f, -1823f, 370f, 355f)))))))));
}

