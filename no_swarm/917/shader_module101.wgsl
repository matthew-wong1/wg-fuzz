struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(18045u, 0u), vec2<u32>(46166u, 7099u), vec2<u32>(156u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 81254u), vec2<u32>(4698u, 1u), vec2<u32>(5319u, 47715u), vec2<u32>(4681u, 3368u), vec2<u32>(1u, 49910u), vec2<u32>(75002u, 40776u), vec2<u32>(25152u, 34294u), vec2<u32>(149580u, 1u), vec2<u32>(28838u, 22830u), vec2<u32>(0u, 19333u), vec2<u32>(1u, 12280u), vec2<u32>(0u, 40033u), vec2<u32>(4294967295u, 13277u));

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true, vec4<i32>(-816i, 1i, 26736i, -14734i), vec3<bool>(false, false, true), vec3<u32>(121936u, 1u, 1u)), Struct_1(true, vec4<i32>(0i, -8922i, 2147483647i, -11811i), vec3<bool>(false, true, false), vec3<u32>(0u, 36601u, 1u)), Struct_1(false, vec4<i32>(-37791i, -1898i, -1i, i32(-2147483648)), vec3<bool>(true, true, false), vec3<u32>(1u, 0u, 4294967295u)), Struct_1(true, vec4<i32>(4547i, 10850i, 0i, 2147483647i), vec3<bool>(false, false, false), vec3<u32>(19430u, 42393u, 1u)));

var<private> global3: array<vec2<bool>, 15>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<u32>) -> u32 {
    var var_0 = Struct_3(firstLeadingBit(arg_1.b.d), vec3<i32>(select(min(1i, arg_1.b.b.x), arg_1.b.b.x, true), u_input.a.x, u_input.a.x) << (reverseBits(arg_1.b.d) % vec3<u32>(32u)), Struct_1(arg_1.b.c.x, min(_wgslsmith_add_vec4_i32(u_input.a, arg_1.b.b) | ~vec4<i32>(0i, 20071i, arg_1.b.b.x, 1453i), _wgslsmith_clamp_vec4_i32(-arg_1.b.b, -vec4<i32>(u_input.a.x, 21060i, -49015i, u_input.a.x), u_input.a)), select(arg_1.b.c, arg_1.b.c, false | (false & arg_1.b.a)), vec3<u32>(arg_1.b.d.x, 0u, u_input.b) & countOneBits(arg_1.b.d | vec3<u32>(4294967295u, u_input.c, arg_2.x))), ~u_input.a.zxw);
    var var_1 = firstTrailingBit(var_0.d);
    global2 = array<Struct_1, 4>();
    global2 = array<Struct_1, 4>();
    var var_2 = arg_1;
    return u_input.c;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32, arg_3: Struct_3) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_4(vec3<i32>(u_input.a.x, -53164i, firstLeadingBit(_wgslsmith_mod_i32(arg_3.b.x, -2147483647i))), select(var_0.b.c.yz, select(select(var_0.b.c.yz, vec2<bool>(arg_3.c.a, false), select(vec2<bool>(true, arg_0.b.a), vec2<bool>(arg_3.c.c.x, false), var_0.b.a)), vec2<bool>(0u != arg_3.a.x, !arg_3.c.a), any(vec2<bool>(arg_3.c.a, var_0.b.a))), select(!any(vec2<bool>(arg_3.c.a, var_0.b.c.x)), !(arg_3.c.a != false), false)), ~vec4<u32>(~arg_1.c.x, 22566u, ~(~930u), func_3(global1.xww, arg_0, arg_0.b.d.yz)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-arg_0.a), Struct_1(all(select(select(vec4<bool>(true, false, arg_1.b.x, arg_3.c.a), vec4<bool>(true, true, false, true), false), select(vec4<bool>(arg_0.b.c.x, arg_1.b.x, arg_1.b.x, arg_0.b.c.x), vec4<bool>(var_0.b.c.x, false, arg_1.b.x, var_1.b.x), arg_3.c.c.x), !var_1.b.x)), arg_0.b.b, !arg_3.c.c, ~var_1.c.zxx));
    let var_2 = 4294967295u;
    var var_3 = vec3<i32>(~(-arg_3.b.x), var_1.a.x, _wgslsmith_div_i32(0i, _wgslsmith_div_i32(select(arg_1.a.x, var_1.a.x >> (4294967295u % 32u), false), -2147483647i)));
    return 1f;
}

fn func_1() -> Struct_2 {
    global0 = array<vec2<u32>, 17>();
    var var_0 = abs(global0[_wgslsmith_index_u32(~u_input.c, 17u)]);
    global1 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-147f)), global1.x)) - global1.x));
    global3 = array<vec2<bool>, 15>();
    var var_1 = global1.x;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(global1.x, Struct_1(false, u_input.a, vec3<bool>(true, true, true), vec3<u32>(u_input.b, u_input.b, var_0.x))), Struct_4(vec3<i32>(-1i, u_input.a.x, -28302i), vec2<bool>(true, false), vec4<u32>(8571u, var_0.x, var_0.x, 4294967295u)), 327u, Struct_3(vec3<u32>(1u, u_input.c, 1u), u_input.a.zzz, global2[_wgslsmith_index_u32(1u, 4u)], u_input.a.zww))) + _wgslsmith_f_op_f32(ceil(global1.x))))), Struct_1(true, vec4<i32>(u_input.a.x, abs(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 0i) & vec4<i32>(-1i, 1i, u_input.a.x, 1i)), u_input.a.x), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(0u < u_input.c, false, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), ~select(vec3<u32>(var_0.x, 3311u, u_input.b), firstLeadingBit(vec3<u32>(10411u, 37930u, 1u)), vec3<bool>(false, true, true))));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = func_1();
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.a.x, ~(~(vec4<u32>(u_input.b, 3804u, 13464u, u_input.c) | vec4<u32>(4294967295u, 47409u, 1u, 1u))), global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(_wgslsmith_div_u32(107217u, ~1u), u_input.b)), 4u)], func_1());
    global3 = array<vec2<bool>, 15>();
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.d.x, u_input.c | var_0.d.x), ~var_0.d.yx), global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 17u)]);
    global3 = array<vec2<bool>, 15>();
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_f_op_f32(-768f * -294f), global1.x, global1.x))));
    let var_2 = Struct_3(_wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.b, 88979u, u_input.b) >> (vec3<u32>(55876u, 1u, 1u) % vec3<u32>(32u))), vec3<u32>(47742u, 30446u, ~func_1().b.d.x)), var_0.b.xzw, global2[_wgslsmith_index_u32(var_1, 4u)], -(-max(vec3<i32>(46987i, var_0.b.x, -2147483647i), u_input.a.wzw) << (~func_4(1i, vec4<u32>(1u, 17905u, var_0.d.x, 133823u), global2[_wgslsmith_index_u32(u_input.b, 4u)], Struct_2(1121f, Struct_1(false, vec4<i32>(var_0.b.x, 0i, -7999i, var_0.b.x), var_0.c, vec3<u32>(u_input.c, var_0.d.x, var_1)))).d % vec3<u32>(32u))));
    var var_3 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wy, vec3<i32>(u_input.a.x, var_2.c.b.x >> (func_4(-var_0.b.x, ~vec4<u32>(var_0.d.x, var_2.c.d.x, var_2.c.d.x, var_1), var_2.c, func_1()).d.x % 32u), 23719i), ~u_input.a.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yw) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -206f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(global1.wz, vec2<f32>(global1.x, global1.x), var_2.c.c.x))))), vec2<f32>(478f, _wgslsmith_f_op_f32(floor(global1.x))))));
}

