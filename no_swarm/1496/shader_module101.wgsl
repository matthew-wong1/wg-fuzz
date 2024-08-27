struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 18>;

var<private> global2: array<u32, 18> = array<u32, 18>(0u, 15065u, 51447u, 23699u, 55628u, 57402u, 48481u, 93308u, 1u, 0u, 0u, 507u, 42035u, 39835u, 63078u, 33072u, 24248u, 77834u);

var<private> global3: array<vec3<u32>, 22>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1) -> u32 {
    global1 = array<f32, 18>();
    global3 = array<vec3<u32>, 22>();
    let var_0 = vec2<u32>(41722u, u_input.a.x);
    var var_1 = global0.x & !global0.x;
    var var_2 = !select(!vec3<bool>(true, false | global0.x, true), vec3<bool>(false, (false || global0.x) || global0.x, false), all(vec3<bool>(global0.x, global0.x, true)));
    return ~countOneBits(4294967295u);
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    global0 = !arg_0.a.c.e;
    global2 = array<u32, 18>();
    let var_0 = Struct_4(Struct_3(arg_0.a.a, arg_2, Struct_2(~1i, firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 28910u), vec3<u32>(14671u, arg_2.c, 1u))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(arg_1.www)))), Struct_1(_wgslsmith_add_vec2_i32(u_input.c, u_input.c), vec4<i32>(2147483647i, arg_2.a.x, u_input.b.x, arg_0.a.c.d.a.x), firstLeadingBit(arg_0.a.b.c)), vec3<bool>(true, true, all(arg_0.a.a.e)))));
    var var_1 = arg_0.a.c;
    let var_2 = select(var_0.a.c.e.yz, select(var_0.a.c.e.zx, var_1.e.xz, vec2<bool>(false, all(vec3<bool>(true, arg_0.a.a.e.x, true)))), false);
    return global2[_wgslsmith_index_u32(var_1.d.c, 18u)] & max(min(~min(22279u, 43912u), ~1u), arg_2.c);
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.b;
    global1 = array<f32, 18>();
    global1 = array<f32, 18>();
    global2 = array<u32, 18>();
    var var_1 = global2[_wgslsmith_index_u32(~(~(~(~_wgslsmith_mod_u32(0u, 2460u)))), 18u)];
    return Struct_2(_wgslsmith_div_i32(((0i >> (u_input.a.x % 32u)) << (~4294967295u % 32u)) >> (_wgslsmith_div_u32(u_input.a.x, global2[_wgslsmith_index_u32(func_1(Struct_1(vec2<i32>(var_0.x, 0i), vec4<i32>(var_0.x, 1i, u_input.c.x, 0i), u_input.a.x)), 18u)]) % 32u), -2147483647i >> (_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)], 4486u) % 32u)), _wgslsmith_clamp_vec3_u32(global3[_wgslsmith_index_u32(~34551u, 22u)], _wgslsmith_clamp_vec3_u32(vec3<u32>(func_3(Struct_4(Struct_3(Struct_2(0i, global3[_wgslsmith_index_u32(11430u, 22u)], vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(39215u, 18u)], 216f), Struct_1(vec2<i32>(5472i, u_input.c.x), vec4<i32>(0i, u_input.b.x, -2147483647i, var_0.x), 0u), vec3<bool>(true, false, global0.x)), Struct_1(var_0.xy, vec4<i32>(u_input.c.x, u_input.c.x, var_0.x, -1i), global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), Struct_2(1i, vec3<u32>(u_input.a.x, u_input.a.x, global2[_wgslsmith_index_u32(8884u, 18u)]), vec3<f32>(1574f, 403f, -432f), Struct_1(u_input.b.xz, vec4<i32>(-45541i, u_input.b.x, 49058i, var_0.x), 12537u), vec3<bool>(global0.x, false, true)))), vec4<f32>(-128f, 882f, global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), Struct_1(var_0.xz, vec4<i32>(1i, var_0.x, 1587i, -2702i), u_input.a.x), global1[_wgslsmith_index_u32(0u, 18u)]), _wgslsmith_clamp_u32(3298u, u_input.a.x, 1u), global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), ~global3[_wgslsmith_index_u32(1u, 22u)], vec3<u32>(u_input.a.x, max(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]), 34294u)), ~vec3<u32>(u_input.a.x >> (4294967295u % 32u), 6524u, 48981u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(47359u, 18u)], 313f, 403f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], -1000f, global1[_wgslsmith_index_u32(82767u, 18u)]))))), Struct_1(_wgslsmith_mod_vec2_i32(countOneBits(-vec2<i32>(2147483647i, -21356i)), -_wgslsmith_clamp_vec2_i32(var_0.xx, u_input.c, vec2<i32>(u_input.b.x, var_0.x))), abs(-vec4<i32>(26184i, -3277i, u_input.c.x, var_0.x)), ~abs(firstLeadingBit(u_input.a.x))), !(!select(select(vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x)), !vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false))));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    let var_0 = ~(~(~abs(vec4<u32>(51913u, 4294967295u, 0u, u_input.a.x))));
    global3 = array<vec3<u32>, 22>();
    let var_1 = Struct_4(Struct_3(Struct_2(abs(-22351i), arg_0.c.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(37696u, 18u)], -621f, 920f)), arg_0.c.d, vec3<bool>(select(true, global0.x, arg_1), true | global0.x, any(arg_0.a.e.zz))), arg_0.c.d, arg_0.a));
    var var_2 = Struct_3(func_2(), var_1.a.b, arg_0.a);
    global1 = array<f32, 18>();
    return var_1.a.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>((2147483647i < ~u_input.c.x) && global0.x, true, true & (true & !global0.x));
    let var_0 = Struct_3(Struct_2(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), abs(35746i)) << (_wgslsmith_mod_u32(countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)] >> (40665u % 32u)) % 32u), _wgslsmith_mult_vec3_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a.x, firstLeadingBit(u_input.a.x)), 22u)], global3[_wgslsmith_index_u32(~func_1(Struct_1(vec2<i32>(u_input.b.x, -14622i), vec4<i32>(37096i, -1i, 57089i, u_input.c.x), 43877u)), 22u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-365f - 240f), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 18u)])), -537f)), Struct_1(reverseBits(u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, -14700i, u_input.b.x), -vec4<i32>(u_input.b.x, u_input.c.x, 0i, 22473i)), ~global2[_wgslsmith_index_u32(~25091u, 18u)]), !vec3<bool>(any(vec3<bool>(false, false, true)), all(vec3<bool>(false, false, global0.x)), global0.x)), func_4(Struct_3(Struct_2(-1i, global3[_wgslsmith_index_u32(~0u, 22u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-434f, 364f, 994f)), Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.c.x), 28084u), vec3<bool>(true, false, global0.x)), Struct_1(u_input.b.yz, max(vec4<i32>(26559i, u_input.c.x, u_input.b.x, u_input.b.x), vec4<i32>(-35520i, u_input.b.x, u_input.b.x, 5113i)), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)])), func_2()), true), func_2());
    var var_1 = var_0;
    var var_2 = Struct_4(var_0);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(382f)))), var_1.a.c.x));
    global0 = select(select(var_1.c.e, vec3<bool>(var_0.c.c.x > _wgslsmith_f_op_f32(abs(2538f)), !var_2.a.a.e.x, false), !(!select(var_1.a.e, var_1.a.e, vec3<bool>(false, var_0.c.e.x, true)))), select(var_1.c.e, func_2().e, var_1.a.e.x), !(!var_2.a.a.e));
    let x = u_input.a;
    s_output = StorageBuffer(~0u);
}

