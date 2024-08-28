struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: vec3<bool>;

var<private> global2: vec4<i32>;

var<private> global3: array<vec2<bool>, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> f32 {
    global3 = array<vec2<bool>, 23>();
    global3 = array<vec2<bool>, 23>();
    global2 = -_wgslsmith_mult_vec4_i32(~(-vec4<i32>(global2.x, -2147483647i, 0i, 1i)) << (vec4<u32>(94806u, reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)]), firstLeadingBit(u_input.a.x), 66029u) % vec4<u32>(32u)), ~(-_wgslsmith_add_vec4_i32(vec4<i32>(global2.x, 15874i, global2.x, 0i), vec4<i32>(global2.x, -2147483647i, global2.x, 19750i))));
    var var_0 = global2.xzy;
    var var_1 = global1.yz;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(327f)) + _wgslsmith_f_op_f32(-1000f + 2262f)) - -216f))));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1125f) - _wgslsmith_f_op_f32(func_3(global1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - -1114f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(122f - _wgslsmith_f_op_f32(exp2(1f))))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-123f + _wgslsmith_f_op_f32(540f + _wgslsmith_f_op_f32(-var_0.x))), var_0.x, 927f), any(vec3<bool>(true, true, true)) || (arg_1 >= arg_1), u_input.a.x);
    global1 = select(!vec3<bool>(var_1.b, true, !select(global1.x, true, true)), vec3<bool>(global1.x, true, true), !(!(!select(vec3<bool>(false, var_1.b, true), vec3<bool>(global1.x, false, var_1.b), false))));
    global2 = firstTrailingBit(abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(-20107i, global2.x, arg_1, 2147483647i), vec4<i32>(0i, arg_1, -1i, arg_1)))) << (arg_0 % vec4<u32>(32u));
    var var_2 = ~var_1.c & 8196u;
    return var_1;
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = false;
    global2 = abs(vec4<i32>(_wgslsmith_mod_i32(global2.x, reverseBits(-arg_0)), _wgslsmith_sub_i32(~global2.x | _wgslsmith_add_i32(0i, arg_0), ~global2.x), countOneBits(-31637i), -18099i));
    global3 = array<vec2<bool>, 23>();
    let var_1 = min(~reverseBits(vec4<u32>(1u, ~arg_2.c, ~u_input.a.x, ~arg_1.x)), min(~max(~vec4<u32>(25122u, 4294967295u, arg_1.x, 4294967295u), vec4<u32>(arg_1.x, u_input.a.x, 0u, u_input.a.x)), reverseBits(vec4<u32>(0u, _wgslsmith_add_u32(arg_2.c, arg_2.c), abs(u_input.a.x), 4617u))));
    global3 = array<vec2<bool>, 23>();
    return Struct_2(firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(global2.x, arg_0), global2.x, ~arg_0) & min(min(global2.wzy, vec3<i32>(13819i, arg_0, global2.x)), _wgslsmith_mod_vec3_i32(global2.www, global2.zwx))), Struct_1(arg_2.a, false, 1u), Struct_1(arg_2.a, arg_2.b, firstLeadingBit(86109u)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_2.a * vec3<f32>(-169f, 1215f, 835f))))), false, var_1.x));
}

fn func_5(arg_0: Struct_2) -> bool {
    let var_0 = arg_0;
    global1 = select(select(!(!select(vec3<bool>(false, var_0.c.b, false), vec3<bool>(true, true, var_0.c.b), vec3<bool>(arg_0.c.b, false, global1.x))), select(!select(vec3<bool>(arg_0.c.b, true, arg_0.d.b), vec3<bool>(var_0.c.b, arg_0.b.b, var_0.c.b), vec3<bool>(false, false, var_0.b.b)), !(!vec3<bool>(false, var_0.c.b, global1.x)), any(!global3[_wgslsmith_index_u32(u_input.a.x, 23u)])), select(!(!vec3<bool>(arg_0.d.b, true, var_0.d.b)), select(vec3<bool>(false, false, global1.x), vec3<bool>(true, global1.x, false), all(global1.zy)), select(!vec3<bool>(global1.x, arg_0.d.b, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), vec3<bool>(any(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(u_input.a.x & 1u), 20u)], 23u)]), true, !any(!vec4<bool>(false, arg_0.d.b, var_0.b.b, var_0.d.b))), select(vec3<bool>(var_0.b.a.x <= _wgslsmith_f_op_f32(trunc(var_0.b.a.x)), !global1.x || true, !var_0.d.b), vec3<bool>(true, abs(global2.x) < -38310i, true), !func_2(vec4<u32>(global0[_wgslsmith_index_u32(var_0.d.c, 20u)], 0u, arg_0.c.c, 0u) & vec4<u32>(global0[_wgslsmith_index_u32(52113u, 20u)], 54550u, var_0.b.c, var_0.b.c), -global2.x).b));
    var var_1 = vec2<f32>(arg_0.c.a.x, -699f);
    global2 = max(select(vec4<i32>(_wgslsmith_add_i32(global2.x, -2147483647i), ~1i, 1i, _wgslsmith_dot_vec2_i32(-arg_0.a.xx, ~var_0.a.yy)), ~select(-vec4<i32>(global2.x, 24388i, 51439i, global2.x), -vec4<i32>(arg_0.a.x, 1i, 1i, -2147483647i), !vec4<bool>(var_0.d.b, true, var_0.b.b, false)), global1.x), vec4<i32>(_wgslsmith_dot_vec2_i32(select(arg_0.a.xx << (u_input.a % vec2<u32>(32u)), vec2<i32>(var_0.a.x, var_0.a.x), !global1.x), global2.wz), arg_0.a.x, -firstLeadingBit(abs(var_0.a.x)), abs(global2.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.c.a.x, 522f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d.a.zy), _wgslsmith_f_op_vec2_f32(vec2<f32>(-251f, var_1.x) * vec2<f32>(-1000f, arg_0.d.a.x))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1754f), 288f))));
    return var_0.c.b;
}

fn func_6(arg_0: bool, arg_1: i32) -> Struct_2 {
    global0 = array<u32, 20>();
    let var_0 = 4294967295u;
    let var_1 = ~vec3<u32>(firstLeadingBit(var_0), (~u_input.a.x >> ((4294967295u & global0[_wgslsmith_index_u32(u_input.a.x, 20u)]) % 32u)) << (~19333u % 32u), 1u);
    let var_2 = var_1.x;
    let var_3 = _wgslsmith_clamp_u32(reverseBits(_wgslsmith_sub_u32(firstTrailingBit(~0u), ~min(var_2, u_input.a.x))), ~var_1.x, 1u);
    return Struct_2(countOneBits(global2.wwx), func_4(global2.x, ~var_1.xz, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-216f, 747f, -688f) - vec3<f32>(-1045f, -417f, 434f))), true, 14531u)).c, func_2(vec4<u32>(firstTrailingBit(1u), var_0, _wgslsmith_mult_u32(_wgslsmith_mod_u32(14563u, var_3), 65089u), max(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_1.x, 20u)], var_2), _wgslsmith_div_u32(u_input.a.x, 0u))), global2.x), func_4(global2.x, vec2<u32>(min(21758u, 23591u), ~func_4(-2147483647i, var_1.xy, Struct_1(vec3<f32>(-1102f, 457f, -325f), global1.x, global0[_wgslsmith_index_u32(var_3, 20u)])).c.c), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))), global1.x, global0[_wgslsmith_index_u32(var_1.x << (global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1242u, var_2, u_input.a.x), 20u)] % 32u), 20u)])).b);
}

fn func_1(arg_0: u32) -> Struct_1 {
    global2 = _wgslsmith_sub_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global2.x, global2.x, global2.x), -vec4<i32>(1i, 2147483647i, global2.x, global2.x)), vec4<i32>(global2.x, global2.x, global2.x & global2.x, global2.x), true) << ((abs(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(96239u, 20u)], 20u)], arg_0, 7253u) & vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], u_input.a.x)) >> (~(vec4<u32>(global0[_wgslsmith_index_u32(arg_0, 20u)], 0u, global0[_wgslsmith_index_u32(4294967295u, 20u)], 1u) | vec4<u32>(arg_0, global0[_wgslsmith_index_u32(arg_0, 20u)], arg_0, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<i32>(firstTrailingBit(global2.x), 2147483647i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-59497i, global2.x, 2147483647i), vec3<i32>(global2.x, -12172i, global2.x))), global2.x));
    var var_0 = global1.zx;
    var var_1 = func_6(func_5(func_4(-1i, ~min(u_input.a, vec2<u32>(20054u, 76664u)), func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 40008u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)]), vec4<u32>(4294967295u, 4294967295u, 25273u, global0[_wgslsmith_index_u32(1u, 20u)])), -global2.x))), 2147483647i);
    let var_2 = func_6(all(!select(select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(global1.x, false, var_1.b.b, false), vec4<bool>(true, var_0.x, false, var_1.d.b)), !vec4<bool>(true, var_0.x, global1.x, true), any(vec2<bool>(var_1.b.b, var_0.x)))), var_1.a.x).c;
    global1 = select(!(!vec3<bool>(true | var_0.x, false, func_4(var_1.a.x, vec2<u32>(var_1.c.c, u_input.a.x), Struct_1(var_1.c.a, global1.x, 4294967295u)).b.b)), select(vec3<bool>(var_2.b, var_0.x, false), !select(!vec3<bool>(false, true, var_2.b), select(vec3<bool>(false, false, true), vec3<bool>(true, false, var_2.b), vec3<bool>(false, false, var_1.b.b)), vec3<bool>(false, var_0.x, false)), vec3<bool>(false, true, (true & var_0.x) && var_0.x)), true);
    return func_2(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(~40156u, 20u)], _wgslsmith_mod_u32(30531u, var_2.c), ~16187u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 47271u, var_2.c), vec3<u32>(u_input.a.x, 1u, 1u))), firstLeadingBit(~vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a.x)))), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-824f - _wgslsmith_f_op_f32(f32(-1f) * -391f)))), -1141f, -1000f), true, ~3312u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-495f, 259f) - 271f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x), all(vec2<bool>(var_0.b, global1.x)))))) + var_0.a.x);
    var var_2 = func_1(~(global0[_wgslsmith_index_u32(~u_input.a.x, 20u)] ^ 35819u));
    let var_3 = ~(~vec4<u32>(_wgslsmith_mult_u32(2250u, _wgslsmith_mod_u32(1u, global0[_wgslsmith_index_u32(1u, 20u)])), var_0.c << (1u % 32u), ~1u, select(~var_0.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40793u, 20u)], 20u)] | var_2.c, false)));
    let var_4 = any(vec3<bool>(select(any(!vec3<bool>(true, true, var_0.b)), false | var_0.b, true), false, var_2.b));
    let var_5 = max(u_input.a.x, select(var_0.c, var_3.x, true));
    var var_6 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_2(vec4<u32>(27295u | var_0.c, ~var_3.x, 1u, var_5), -2476i ^ _wgslsmith_sub_i32(global2.x, global2.x)).a.zy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, _wgslsmith_f_op_f32(-var_2.a.x))))));
    var_0 = func_6(func_1(firstLeadingBit(~(~var_5))).b, -32642i).d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(step(var_6.x, 711f)), var_6.x, var_1, -247f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_0.a.x, 595f, var_2.a.x) - vec4<f32>(1000f, -951f, 451f, var_2.a.x))))), -1676f, _wgslsmith_div_f32(var_1, 884f), var_3, var_0.a.x);
}

