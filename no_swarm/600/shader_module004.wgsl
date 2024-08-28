struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14>;

var<private> global1: bool;

var<private> global2: vec3<i32>;

var<private> global3: u32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> i32 {
    var var_0 = vec4<u32>(_wgslsmith_add_u32(~select(78543u, arg_1, true) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 12562u, u_input.c) | u_input.a.xyw, ~vec3<u32>(1u, arg_1, u_input.c)), abs(u_input.c)), ~_wgslsmith_add_u32(~43085u, abs(~4294967295u)), abs(u_input.d ^ u_input.a.x), 4294967295u >> ((~firstTrailingBit(u_input.d) << (~4294967295u % 32u)) % 32u));
    var var_1 = select(!(!(!vec3<bool>(true, arg_0.x, true))), select(!vec3<bool>(arg_0.x, arg_0.x, false || arg_0.x), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x)), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, false), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x), arg_0.x)), select(!vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x), select(vec3<bool>(false, true, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x)))), select(select(select(vec3<bool>(arg_0.x, false, false), vec3<bool>(false, true, arg_0.x), arg_0.x), select(vec3<bool>(false, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x)), vec3<bool>(var_0.x != 44595u, !arg_0.x, true), vec3<bool>(!arg_0.x, arg_0.x | arg_0.x, arg_0.x))), arg_0.x);
    return select(_wgslsmith_add_i32(-global2.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(40878i, global2.x, global2.x), vec3<i32>(-10104i, -25808i, global2.x)), ~(~global2.x))), 10679i, false);
}

fn func_2(arg_0: Struct_3) -> u32 {
    global2 = firstTrailingBit(select(~(-_wgslsmith_div_vec3_i32(vec3<i32>(global2.x, 44952i, global2.x), vec3<i32>(global2.x, global2.x, 0i))), vec3<i32>(2147483647i | (global2.x | 3999i), _wgslsmith_mod_i32(-1i, global2.x), func_3(arg_0.a.c.xy, 45857u << (arg_0.a.a.x % 32u))), select(select(select(arg_0.a.c, vec3<bool>(false, arg_0.a.c.x, true), arg_0.a.c), arg_0.a.c, vec3<bool>(arg_0.a.c.x, true, false)), !select(arg_0.a.c, vec3<bool>(true, false, true), arg_0.a.c.x), true)));
    let var_0 = -1837f;
    let var_1 = Struct_1(arg_0.a.a, arg_0.a.b, select(arg_0.a.c, select(arg_0.a.c, arg_0.a.c, select(arg_0.a.c, !vec3<bool>(arg_0.a.c.x, arg_0.a.c.x, true), all(vec4<bool>(false, false, false, arg_0.a.c.x)))), select(vec3<bool>(!arg_0.a.c.x, true, arg_0.a.c.x), select(vec3<bool>(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x), select(vec3<bool>(arg_0.a.c.x, false, arg_0.a.c.x), arg_0.a.c, arg_0.a.c), arg_0.a.c), false)), arg_0.a.d);
    let var_2 = arg_0;
    var var_3 = global2.x;
    return 0u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32, arg_3: u32) -> Struct_2 {
    var var_0 = vec4<u32>(arg_3 >> (56413u % 32u), 0u, abs(select(func_2(Struct_3(arg_0)), arg_0.b.x, true)), ~arg_0.a.x);
    var var_1 = firstLeadingBit(~(~abs(var_0.www)));
    var var_2 = _wgslsmith_add_vec2_u32(~select(_wgslsmith_mod_vec2_u32(~var_1.xy, vec2<u32>(39164u, arg_3)), u_input.b.yy, !arg_1.a.zz), _wgslsmith_mult_vec2_u32(~var_0.ww, vec2<u32>(5110u, ~4294967295u) | _wgslsmith_add_vec2_u32(var_1.xx & vec2<u32>(0u, 112109u), var_1.yz)));
    var var_3 = false;
    var_2 = ~(~(~select(var_0.xz, vec2<u32>(u_input.b.x, var_0.x), false && arg_1.a.x)));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1431f)), arg_2, any(!arg_0.c.xz), Struct_1(countOneBits(~var_0.xw), vec4<u32>(_wgslsmith_div_u32(0u, _wgslsmith_sub_u32(var_1.x, arg_3)), ~u_input.c << (~var_2.x % 32u), ~59885u, firstTrailingBit(~1u)), arg_0.c, var_1.x));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: bool, arg_3: Struct_4) -> Struct_1 {
    return Struct_1(arg_1.b.d.b.ww, u_input.a, !vec3<bool>(true, func_1(func_1(Struct_1(u_input.b.yx, vec4<u32>(1u, 1u, 0u, 0u), arg_1.a.a.c, 4294967295u), Struct_4(vec3<bool>(true, false, false)), 43122u, u_input.b.x).d, global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 14u)], reverseBits(60382u), ~4294967295u).d.c.x, false), ~(~arg_0.b.b));
}

fn func_5(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a + arg_0.a))))), arg_0.d.d, arg_0.c, func_4(Struct_5(Struct_3(Struct_1(vec2<u32>(arg_0.d.d, 0u), u_input.a, vec3<bool>(true, arg_0.c, arg_0.c), arg_0.d.a.x)), func_1(Struct_1(vec2<u32>(arg_0.d.a.x, 12780u), u_input.a, arg_0.d.c, u_input.c), Struct_4(vec3<bool>(arg_0.c, arg_0.c, false)), 4294967295u, countOneBits(arg_0.d.d)), Struct_3(arg_0.d)), Struct_5(Struct_3(func_4(Struct_5(Struct_3(arg_0.d), Struct_2(arg_0.a, 0u, arg_0.c, Struct_1(vec2<u32>(arg_0.d.d, u_input.b.x), vec4<u32>(arg_0.b, u_input.c, 1u, 0u), arg_0.d.c, arg_0.d.a.x)), Struct_3(arg_0.d)), Struct_5(Struct_3(arg_0.d), Struct_2(-882f, 13664u, false, Struct_1(arg_0.d.b.xx, arg_0.d.b, vec3<bool>(arg_0.d.c.x, arg_0.c, arg_0.c), u_input.b.x)), Struct_3(arg_0.d)), false, global0[_wgslsmith_index_u32(arg_0.d.a.x, 14u)])), arg_0, Struct_3(Struct_1(vec2<u32>(52072u, 53683u), u_input.a, arg_0.d.c, 117872u))), true, Struct_4(!arg_0.d.c)));
    let var_1 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(0u, _wgslsmith_mod_u32(select(var_0.b, 0u, false), _wgslsmith_dot_vec4_u32(arg_0.d.b, u_input.a))), _wgslsmith_div_vec2_u32(abs(arg_0.d.a) & vec2<u32>(4294967295u, 31922u), _wgslsmith_sub_vec2_u32(u_input.b.zx, ~vec2<u32>(2225u, arg_0.b)))), vec4<u32>(arg_0.d.b.x, 1u ^ u_input.b.x, func_1(func_4(Struct_5(Struct_3(Struct_1(var_0.d.b.yz, arg_0.d.b, vec3<bool>(var_0.d.c.x, true, false), arg_0.b)), var_0, Struct_3(arg_0.d)), Struct_5(Struct_3(Struct_1(vec2<u32>(u_input.d, u_input.a.x), var_0.d.b, vec3<bool>(true, false, false), 4294967295u)), var_0, Struct_3(Struct_1(vec2<u32>(40161u, arg_0.d.d), vec4<u32>(arg_0.b, arg_0.d.a.x, u_input.c, arg_0.d.a.x), var_0.d.c, var_0.b))), false, global0[_wgslsmith_index_u32(arg_0.d.b.x, 14u)]), Struct_4(arg_0.d.c), 4294967295u, var_0.d.b.x).d.d, 0u) >> (firstLeadingBit(~func_1(var_0.d, Struct_4(var_0.d.c), 1u, 0u).d.b) % vec4<u32>(32u)), !var_0.d.c, var_0.d.b.x);
    return 162f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(601f * 1646f))) * -895f)))));
    var var_1 = _wgslsmith_f_op_f32(func_5(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1169f * 1011f)) + -451f), u_input.a.x, true, func_4(Struct_5(Struct_3(Struct_1(vec2<u32>(4294967295u, u_input.d), vec4<u32>(25952u, u_input.d, u_input.c, 0u), vec3<bool>(true, true, true), 0u)), func_1(Struct_1(vec2<u32>(13942u, u_input.d), u_input.a, vec3<bool>(false, true, false), 82701u), Struct_4(vec3<bool>(false, true, false)), u_input.a.x, u_input.b.x), Struct_3(Struct_1(vec2<u32>(u_input.b.x, 4294967295u), vec4<u32>(4294967295u, 1u, u_input.d, u_input.d), vec3<bool>(false, true, false), u_input.c))), Struct_5(Struct_3(Struct_1(vec2<u32>(u_input.b.x, u_input.c), vec4<u32>(4294967295u, 26806u, u_input.c, 35188u), vec3<bool>(false, false, true), 19320u)), func_1(Struct_1(u_input.a.xx, u_input.a, vec3<bool>(true, false, true), 39924u), Struct_4(vec3<bool>(true, false, false)), u_input.d, 53635u), Struct_3(Struct_1(u_input.b.xz, u_input.a, vec3<bool>(false, false, false), u_input.c))), true, global0[_wgslsmith_index_u32(u_input.b.x ^ abs(4294967295u), 14u)]))));
    var var_2 = u_input.a.wzw << (~vec3<u32>(min(max(0u, 0u), ~10534u), u_input.a.x ^ select(u_input.c, u_input.d, true), _wgslsmith_dot_vec2_u32(~u_input.b.xy, _wgslsmith_sub_vec2_u32(u_input.b.zz, vec2<u32>(u_input.a.x, 4294967295u)))) % vec3<u32>(32u));
    var var_3 = _wgslsmith_clamp_vec4_i32(~(~_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, -19192i, global2.x, -2147483647i), firstTrailingBit(vec4<i32>(global2.x, -2147483647i, -32317i, global2.x)))), -select(countOneBits(vec4<i32>(1229i, global2.x, global2.x, global2.x)) << (_wgslsmith_add_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 54262i, global2.x, global2.x), !all(vec2<bool>(true, false))), abs(vec4<i32>(_wgslsmith_dot_vec2_i32(abs(global2.zx), global2.yx), global2.x, _wgslsmith_sub_i32(global2.x, abs(global2.x)), global2.x)));
    global1 = !func_1(func_1(Struct_1(var_2.zz, u_input.a, vec3<bool>(true, true, true), ~var_2.x), global0[_wgslsmith_index_u32(~min(u_input.b.x, 42318u), 14u)], ~87805u, 4294967295u).d, Struct_4(vec3<bool>(true, all(vec4<bool>(true, false, false, true)), true)), func_1(func_1(func_4(Struct_5(Struct_3(Struct_1(var_2.xy, vec4<u32>(0u, 65413u, 4294967295u, var_2.x), vec3<bool>(true, false, true), 79921u)), Struct_2(952f, var_2.x, true, Struct_1(vec2<u32>(4294967295u, var_2.x), vec4<u32>(30084u, 39396u, var_2.x, 5393u), vec3<bool>(true, false, false), 57381u)), Struct_3(Struct_1(vec2<u32>(u_input.b.x, var_2.x), vec4<u32>(1u, 33027u, 124379u, var_2.x), vec3<bool>(false, true, false), 4294967295u))), Struct_5(Struct_3(Struct_1(vec2<u32>(14445u, u_input.b.x), vec4<u32>(1u, 79837u, var_2.x, 46810u), vec3<bool>(false, true, false), var_2.x)), Struct_2(-1469f, var_2.x, false, Struct_1(var_2.yy, u_input.a, vec3<bool>(true, true, false), var_2.x)), Struct_3(Struct_1(vec2<u32>(var_2.x, 32915u), u_input.a, vec3<bool>(true, false, false), u_input.a.x))), true, global0[_wgslsmith_index_u32(u_input.c, 14u)]), Struct_4(vec3<bool>(true, false, true)), ~var_2.x, _wgslsmith_add_u32(u_input.d, u_input.d)).d, Struct_4(vec3<bool>(true, false, false)), 4294967295u, 54112u).d.b.x, ~(~u_input.c)).d.c.x;
    var var_4 = func_1(func_4(Struct_5(Struct_3(Struct_1(vec2<u32>(1u, 1u), vec4<u32>(var_2.x, 1u, 0u, u_input.a.x), vec3<bool>(true, true, true), var_2.x)), func_1(Struct_1(vec2<u32>(var_2.x, u_input.c), vec4<u32>(16465u, var_2.x, 62062u, 0u), vec3<bool>(false, false, true), u_input.b.x), global0[_wgslsmith_index_u32(var_2.x | 38363u, 14u)], ~u_input.d, u_input.d), Struct_3(func_4(Struct_5(Struct_3(Struct_1(vec2<u32>(var_2.x, 43530u), vec4<u32>(var_2.x, 22923u, 1u, 4294967295u), vec3<bool>(false, true, true), 0u)), Struct_2(1052f, 120148u, true, Struct_1(u_input.b.xz, u_input.a, vec3<bool>(true, false, false), 1u)), Struct_3(Struct_1(vec2<u32>(u_input.b.x, 38146u), u_input.a, vec3<bool>(true, true, false), u_input.d))), Struct_5(Struct_3(Struct_1(u_input.b.xz, vec4<u32>(1u, u_input.b.x, var_2.x, 28331u), vec3<bool>(true, false, false), 0u)), Struct_2(1232f, 254u, true, Struct_1(u_input.b.zz, u_input.a, vec3<bool>(false, true, false), var_2.x)), Struct_3(Struct_1(u_input.a.zx, u_input.a, vec3<bool>(true, false, true), u_input.d))), true, global0[_wgslsmith_index_u32(var_2.x, 14u)]))), Struct_5(Struct_3(Struct_1(var_2.xx, u_input.a, vec3<bool>(true, false, true), 4294967295u)), func_1(Struct_1(u_input.b.zz, u_input.a, vec3<bool>(false, true, true), 0u), Struct_4(vec3<bool>(true, true, false)), ~4294967295u, ~var_2.x), Struct_3(func_1(Struct_1(vec2<u32>(var_2.x, var_2.x), u_input.a, vec3<bool>(true, true, true), 67359u), global0[_wgslsmith_index_u32(u_input.c, 14u)], var_2.x, 80771u).d)), !(_wgslsmith_mod_i32(global2.x, 0i) == ~(-52055i)), Struct_4(select(vec3<bool>(false, true, false), func_4(Struct_5(Struct_3(Struct_1(u_input.a.xy, u_input.a, vec3<bool>(true, true, true), 5930u)), Struct_2(201f, u_input.d, true, Struct_1(vec2<u32>(u_input.c, 39060u), vec4<u32>(u_input.d, u_input.a.x, var_2.x, var_2.x), vec3<bool>(false, true, true), var_2.x)), Struct_3(Struct_1(vec2<u32>(var_2.x, u_input.b.x), u_input.a, vec3<bool>(false, false, true), 1u))), Struct_5(Struct_3(Struct_1(vec2<u32>(0u, 1u), vec4<u32>(0u, 41506u, 38491u, 4294967295u), vec3<bool>(false, true, false), var_2.x)), Struct_2(-1183f, var_2.x, false, Struct_1(var_2.yx, u_input.a, vec3<bool>(false, false, false), var_2.x)), Struct_3(Struct_1(vec2<u32>(4294967295u, u_input.d), u_input.a, vec3<bool>(false, true, false), 4294967295u))), true, Struct_4(vec3<bool>(false, false, true))).c, vec3<bool>(true, true, true)))), global0[_wgslsmith_index_u32(~abs(1u), 14u)], max(var_2.x, u_input.b.x), _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_2.x, select(var_2.x, 0u, false) << (var_2.x % 32u)), ~(~4294967295u))).d.b.wyx;
    var_4 = _wgslsmith_sub_vec3_u32(~(~(~(~u_input.a.xyz))), ~vec3<u32>(var_2.x, ~27054u, ~(~var_2.x)));
    let var_5 = Struct_1(func_4(Struct_5(Struct_3(Struct_1(var_2.zz, u_input.a, vec3<bool>(false, true, true), u_input.a.x)), func_1(Struct_1(vec2<u32>(var_4.x, var_4.x), vec4<u32>(var_2.x, 872u, 58837u, u_input.c), vec3<bool>(false, false, false), var_2.x), Struct_4(vec3<bool>(true, false, false)), u_input.a.x, func_1(Struct_1(vec2<u32>(var_4.x, 4294967295u), vec4<u32>(60489u, var_2.x, 19922u, 0u), vec3<bool>(true, true, true), 1u), global0[_wgslsmith_index_u32(33855u, 14u)], 0u, 4294967295u).d.d), Struct_3(func_1(Struct_1(vec2<u32>(66053u, var_2.x), vec4<u32>(var_2.x, 4770u, 11777u, 24289u), vec3<bool>(true, false, false), var_2.x), global0[_wgslsmith_index_u32(var_2.x, 14u)], 4294967295u, var_2.x).d)), Struct_5(Struct_3(Struct_1(var_2.yz, vec4<u32>(var_4.x, u_input.b.x, 4045u, var_4.x), vec3<bool>(false, true, true), var_2.x)), func_1(Struct_1(vec2<u32>(var_2.x, 118826u), vec4<u32>(30186u, 1u, var_2.x, var_4.x), vec3<bool>(true, true, false), var_2.x), Struct_4(vec3<bool>(true, false, true)), _wgslsmith_div_u32(44488u, 1u), ~1u), Struct_3(func_4(Struct_5(Struct_3(Struct_1(vec2<u32>(0u, var_4.x), u_input.a, vec3<bool>(false, false, false), 0u)), Struct_2(571f, var_4.x, true, Struct_1(u_input.b.yy, u_input.a, vec3<bool>(true, false, true), 35831u)), Struct_3(Struct_1(var_4.yx, u_input.a, vec3<bool>(false, true, false), var_4.x))), Struct_5(Struct_3(Struct_1(vec2<u32>(var_4.x, var_2.x), u_input.a, vec3<bool>(false, true, true), 4294967295u)), Struct_2(331f, u_input.c, true, Struct_1(var_2.zz, vec4<u32>(1u, 32588u, 49780u, var_2.x), vec3<bool>(false, false, false), var_2.x)), Struct_3(Struct_1(vec2<u32>(var_2.x, 1u), vec4<u32>(43701u, 4294967295u, var_4.x, var_4.x), vec3<bool>(false, true, true), var_4.x))), true, global0[_wgslsmith_index_u32(var_2.x, 14u)]))), true, global0[_wgslsmith_index_u32(72007u, 14u)]).a, firstLeadingBit(vec4<u32>(u_input.d, countOneBits(1u), ~0u, _wgslsmith_add_u32(min(40087u, var_2.x), var_4.x << (var_4.x % 32u)))), vec3<bool>(true, true, func_4(Struct_5(Struct_3(Struct_1(vec2<u32>(var_4.x, var_4.x), u_input.a, vec3<bool>(false, true, false), u_input.d)), Struct_2(307f, 5538u, false, Struct_1(vec2<u32>(var_4.x, var_4.x), u_input.a, vec3<bool>(false, false, false), 64215u)), Struct_3(Struct_1(vec2<u32>(4294967295u, 0u), u_input.a, vec3<bool>(false, true, true), var_4.x))), Struct_5(Struct_3(Struct_1(u_input.a.ww, vec4<u32>(var_2.x, var_2.x, var_2.x, 1u), vec3<bool>(false, true, false), 0u)), Struct_2(254f, var_4.x, false, Struct_1(u_input.a.xz, vec4<u32>(var_2.x, 38324u, var_2.x, u_input.c), vec3<bool>(false, true, true), 59263u)), Struct_3(Struct_1(vec2<u32>(4166u, var_2.x), u_input.a, vec3<bool>(true, true, true), 4294967295u))), func_1(Struct_1(var_4.zz, vec4<u32>(64143u, u_input.c, 1u, u_input.a.x), vec3<bool>(false, true, false), var_4.x), global0[_wgslsmith_index_u32(4294967295u, 14u)], u_input.c, u_input.d).c, Struct_4(vec3<bool>(false, true, true))).c.x && true), 23805u);
    var_2 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 61256u) & func_1(Struct_1(vec2<u32>(1u, var_4.x), vec4<u32>(4294967295u, 1u, var_5.a.x, 4294967295u), vec3<bool>(true, var_5.c.x, true), 1u), global0[_wgslsmith_index_u32(1u, 14u)], var_5.b.x, 40926u).d.b.zxz, ~firstTrailingBit(var_5.b.xyx)), 4294967295u, ~var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1680f, var_5.b << (~select(vec4<u32>(4294967295u, var_5.d, var_2.x, 29090u), firstTrailingBit(vec4<u32>(var_2.x, var_5.d, var_4.x, u_input.d)), !vec4<bool>(false, var_5.c.x, var_5.c.x, var_5.c.x)) % vec4<u32>(32u)), -1588f, 1i, 7515i >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.d, abs(76565u)), 13757u) % 32u));
}

