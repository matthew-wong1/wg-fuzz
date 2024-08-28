struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_4 = Struct_4(Struct_1(false, 513f, vec3<bool>(true, true, true), 91776u), Struct_1(true, -1399f, vec3<bool>(true, true, true), 0u), vec4<bool>(true, false, false, true), vec2<bool>(false, true));

var<private> global2: vec3<u32>;

var<private> global3: array<bool, 29>;

var<private> global4: array<f32, 8>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> bool {
    global4 = array<f32, 8>();
    let var_0 = global1.c;
    var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(global1.a.d, 80301u, ~32656u, u_input.c.x), vec4<u32>(~global1.b.d, 71937u, global2.x, 9531u));
    global0 = u_input.c.x;
    var var_2 = Struct_2(vec2<bool>(max(~85425u, _wgslsmith_mod_u32(3447u, 62012u)) <= countOneBits(global2.x), false), var_1.zwx);
    return global3[_wgslsmith_index_u32(1u, 29u)];
}

fn func_2() -> Struct_3 {
    global1 = Struct_4(global1.b, Struct_1(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(10267u, 8u)] - global4[_wgslsmith_index_u32(0u, 8u)]))), global1.a.b, vec3<bool>(all(global1.c.wzx), global3[_wgslsmith_index_u32(global1.b.d, 29u)], all(global1.b.c)), global1.a.d), select(global1.c, global1.c, !any(vec4<bool>(true, true, global3[_wgslsmith_index_u32(global1.a.d, 29u)], false))), global1.d);
    let var_0 = max(u_input.a.zz >> (vec2<u32>(~_wgslsmith_div_u32(global1.a.d, 1u), global2.x) % vec2<u32>(32u)), u_input.a.zw);
    var var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-493f))), -508f)), _wgslsmith_f_op_f32(exp2(global1.a.b))) * global4[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(min(0u, global1.b.d), max(32349u, 6621u)), ~(~u_input.c.x), true) << (43912u % 32u), 8u)]);
    global0 = abs(u_input.c.x);
    return Struct_3(-1i);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(global1.a, global1.a, !vec4<bool>(true, !any(vec3<bool>(global3[_wgslsmith_index_u32(0u, 29u)], false, true)), any(select(vec2<bool>(false, true), vec2<bool>(global1.d.x, false), global1.a.c.yz)), !(global1.a.c.x && global1.a.c.x)), global1.a.c.zx);
    var var_1 = Struct_2(global1.d, _wgslsmith_mult_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.d, 55394u, var_0.a.d), vec3<u32>(1u, var_0.b.d, global1.b.d)), ~max(vec3<u32>(var_0.a.d, 34794u, 21037u), vec3<u32>(var_0.a.d, 67309u, u_input.c.x)), select(select(vec3<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 29u)]), var_0.b.c, var_0.b.c), vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), var_0.b.a))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, 17616u, 4213u), ~vec3<u32>(global1.a.d, 59019u, 4294967295u)), ~(~vec3<u32>(u_input.c.x, 14265u, global2.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global1.a.d, u_input.c.x, global2.x), vec3<u32>(u_input.c.x, global1.a.d, u_input.c.x)), vec3<u32>(global2.x, 4294967295u, 1u), vec3<u32>(global1.a.d, global2.x, 1u) | vec3<u32>(var_0.b.d, 84380u, var_0.b.d)))));
    let var_2 = true | var_1.a.x;
    global0 = 0u;
    let var_3 = Struct_4(Struct_1(var_0.d.x, _wgslsmith_div_f32(-1589f, var_0.b.b), !select(vec3<bool>(false, global1.c.x, true), !global1.a.c, global1.b.c), _wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(63927u, global1.b.d, var_0.b.d, global2.x))), max(~vec4<u32>(83339u, var_1.b.x, global2.x, var_0.b.d), max(vec4<u32>(9575u, global2.x, 7478u, 0u), vec4<u32>(25325u, var_1.b.x, global2.x, 5502u))))), global1.b, global1.c, select(var_0.b.c.yz, !(!var_1.a), vec2<bool>(true, any(global1.c))));
    return var_3.b;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global1 = Struct_4(func_4(func_2()), global1.a, select(select(!(!global1.c), global1.c, true), select(!vec4<bool>(true, true, global1.d.x, true), select(vec4<bool>(true, false, global1.d.x, global1.c.x), global1.c, !global1.c), !global1.c), global1.b.a), select(vec2<bool>(!all(vec3<bool>(global1.d.x, global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(arg_0, 29u)])), true), func_4(func_2()).c.zx, all(select(global1.d, vec2<bool>(false, false), true & global3[_wgslsmith_index_u32(21090u, 29u)]))));
    let var_0 = vec3<u32>(0u, _wgslsmith_sub_u32(func_4(func_2()).d, ~max(arg_0, global1.b.d)) << (~global1.a.d % 32u), ~_wgslsmith_dot_vec3_u32(firstLeadingBit(max(vec3<u32>(4307u, global1.b.d, global2.x), vec3<u32>(0u, 1u, 23467u))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, arg_0, 1012u), vec3<u32>(arg_0, global1.b.d, arg_0))));
    var var_1 = _wgslsmith_add_vec4_i32(~vec4<i32>(reverseBits(max(2147483647i, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -4279i, -1781i, u_input.b), vec4<i32>(u_input.a.x, -7234i, u_input.b, u_input.b) & u_input.a), min(min(-37880i, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(4918i, -5410i))), _wgslsmith_mod_i32(~(-1i), u_input.a.x)), -u_input.a);
    var var_2 = global1.a;
    global1 = Struct_4(global1.a, func_4(Struct_3(abs(-2147483647i))), vec4<bool>(func_4(func_2()).c.x, var_2.c.x, ~u_input.a.x == ((u_input.a.x ^ -2147483647i) >> ((var_2.d | var_2.d) % 32u)), any(var_2.c)), vec2<bool>(!global1.d.x, true));
    return Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-951f)) - var_2.b), global1.a.c, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, ~30731u, firstTrailingBit(var_2.d)), firstTrailingBit(global1.b.d), abs(1u | global1.b.d), 1u), min(_wgslsmith_div_vec4_u32(~vec4<u32>(28910u, 15958u, u_input.c.x, 4294967295u), ~vec4<u32>(global2.x, 70019u, 1u, 4294967295u)), ~vec4<u32>(4294967295u, 643u, var_2.d, 97483u) ^ select(vec4<u32>(31589u, 4294967295u, 40826u, 4294967295u), vec4<u32>(45006u, 73361u, var_2.d, 4294967295u), global1.c.x))));
}

fn func_5(arg_0: Struct_4) -> u32 {
    var var_0 = arg_0.b;
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, select(u_input.c.x, global2.x, global3[_wgslsmith_index_u32(var_0.d << ((global2.x << (global2.x % 32u)) % 32u), 29u)]), min(arg_0.a.d, 4294967295u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(~46116u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, 23071u), vec3<u32>(arg_0.b.d, 85110u, var_0.d)), u_input.c.x), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.d, var_0.d, 0u), reverseBits(vec3<u32>(var_0.d, 1u, 4294967295u)), select(vec3<u32>(var_0.d, global1.b.d, global1.b.d), vec3<u32>(global1.a.d, 15808u, global2.x), global1.b.a))));
    let var_2 = !global1.c.zx;
    var var_3 = 46862u;
    global2 = ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(~global1.a.d, ~global1.a.d, 42839u), vec3<u32>(4294967295u, 14982u, ~4294967295u)));
    return _wgslsmith_clamp_u32(min(var_1, 4294967295u), abs(var_1), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, ~0u, max(72564u, 37794u), func_4(Struct_3(1i)).d), (vec4<u32>(4294967295u, 1u, 6956u, 4294967295u) & vec4<u32>(global2.x, 35111u, var_1, arg_0.a.d)) >> (~vec4<u32>(0u, 4294967295u, var_0.d, 1u) % vec4<u32>(32u))));
}

fn func_6(arg_0: u32, arg_1: vec3<bool>) -> StorageBuffer {
    global2 = vec3<u32>(~(~max(55050u, arg_0)), u_input.c.x, arg_0) & _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.c.x, ~0u), global1.a.d, arg_0), max(~firstLeadingBit(vec3<u32>(global1.b.d, global1.b.d, u_input.c.x)), vec3<u32>(49071u, ~global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, global2.x, arg_0, 1u), vec4<u32>(global1.b.d, 55270u, arg_0, 1u)))));
    global3 = array<bool, 29>();
    global0 = select(0u & _wgslsmith_clamp_u32(~global2.x, func_5(Struct_4(Struct_1(false, -407f, vec3<bool>(true, false, arg_1.x), 34246u), Struct_1(global1.b.a, global1.b.b, vec3<bool>(arg_1.x, true, arg_1.x), u_input.c.x), global1.c, arg_1.zz)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.x, global1.b.d, u_input.c.x), vec4<u32>(u_input.c.x, 139011u, 23546u, 1u)) >> (arg_0 % 32u)), firstTrailingBit((89295u & arg_0) | arg_0) | global1.a.d, global3[_wgslsmith_index_u32(global2.x, 29u)]);
    var var_0 = Struct_4(func_4(Struct_3(u_input.a.x)), func_1(arg_0), !vec4<bool>(true, false, !(!global3[_wgslsmith_index_u32(u_input.c.x, 29u)]), global3[_wgslsmith_index_u32(~reverseBits(4294967295u), 29u)]), global1.c.xx);
    var var_1 = countOneBits(min(vec4<i32>(-5833i, ~1797i, _wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, u_input.d.x), -u_input.a.x), -u_input.b), vec4<i32>(abs(-2147483647i), ~u_input.b & (0i & u_input.a.x), abs(-1i), firstTrailingBit(-2147483647i))));
    return StorageBuffer(reverseBits(u_input.d.x), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.wx, vec2<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), 1i)), 0i, 10522i << (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(1u, arg_0)), arg_0) % 32u)), ~(~(~1962u)) << (~abs(global1.b.d) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~reverseBits(0u & global2.x) & 47783u);
    let x = u_input.a;
    s_output = func_6(func_5(Struct_4(func_1(4294967295u), Struct_1(global1.b.c.x, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 8u)]), func_1(global1.b.d).c, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u, u_input.c.x))), !(!vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 29u)], global1.b.a, global3[_wgslsmith_index_u32(0u, 29u)])), !func_1(4294967295u).c.yz)), !func_1(global1.a.d).c);
}

