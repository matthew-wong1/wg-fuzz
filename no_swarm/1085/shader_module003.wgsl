struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(0i, -1418i, 2147483647i, 0i, 2147483647i, -1i, -17952i, 2147483647i, -78898i);

var<private> global1: Struct_2 = Struct_2(vec3<u32>(4294967295u, 36688u, 45588u), vec4<i32>(0i, -2797i, 1i, 1i), Struct_1(vec4<u32>(15088u, 105131u, 10980u, 23401u), false, vec2<i32>(i32(-2147483648), -20316i), vec3<bool>(false, true, true), 2147483647i), Struct_1(vec4<u32>(30678u, 33938u, 23037u, 0u), true, vec2<i32>(-32027i, 2147483647i), vec3<bool>(true, false, true), 1i));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    let var_0 = global1.b;
    let var_1 = global1.c.a.xzz;
    var var_2 = global1.c.a;
    var_2 = global1.c.a;
    var var_3 = Struct_2(global1.d.a.wzz, firstTrailingBit(select(global1.b, global1.b, !(!vec4<bool>(global1.d.d.x, global1.c.b, global1.c.d.x, global1.d.d.x)))), global1.c, Struct_1(global1.d.a, true, vec2<i32>(1i, u_input.c.x), global1.c.d, -global1.d.e));
    return global1.b;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(global1.a >> (~global1.d.a.zwy % vec3<u32>(32u)), global1.b, global1.c, global1.d);
    var var_1 = ~_wgslsmith_mod_u32(82277u, min(_wgslsmith_mult_u32(~u_input.a, global1.c.a.x), ~var_0.d.a.x));
    var var_2 = Struct_3(firstLeadingBit(var_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(530f - 1554f), _wgslsmith_div_f32(741f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-254f, 1791f)), 1000f)))));
    var var_3 = Struct_3(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-2147483647i, var_2.a, _wgslsmith_add_i32(global1.c.c.x ^ global0[_wgslsmith_index_u32(4294967295u, 9u)], 2890i))), var_2.b);
    global1 = Struct_2(_wgslsmith_clamp_vec3_u32(~(~var_0.a), vec3<u32>(13464u, var_0.c.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.a.x, var_0.d.a.x, global1.c.a.x), min(global1.a, var_0.c.a.xwz))), max(var_0.c.a.xzw, ~select(var_0.a, vec3<u32>(var_0.c.a.x, 4294967295u, global1.d.a.x), var_0.d.d))), firstTrailingBit(_wgslsmith_add_vec4_i32(~var_0.b, _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.c.x, var_0.d.e, -1i), func_3()))), Struct_1(~firstLeadingBit(vec4<u32>(1u, 53607u, global1.a.x, 15986u) >> (vec4<u32>(u_input.a, global1.c.a.x, var_0.d.a.x, global1.c.a.x) % vec4<u32>(32u))), any(global1.d.d.xx), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.d.c.x, -2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b.x, u_input.c.x), u_input.c.zy, vec2<i32>(var_2.a, var_0.c.c.x))) >> ((~vec2<u32>(4294967295u, 0u) ^ ~global1.d.a.yx) % vec2<u32>(32u)), !select(!vec3<bool>(true, false, var_0.d.b), !var_0.c.d, !global1.c.d), ~(~global1.c.c.x)), Struct_1(_wgslsmith_mod_vec4_u32(select(select(vec4<u32>(12987u, 21648u, var_0.d.a.x, var_0.a.x), vec4<u32>(0u, var_0.c.a.x, global1.a.x, 4294967295u), vec4<bool>(var_0.c.d.x, var_0.d.d.x, global1.d.b, global1.d.b)), vec4<u32>(var_0.a.x, u_input.a, var_0.c.a.x, 26242u), true), ~countOneBits(var_0.c.a)), true, vec2<i32>(-19121i, _wgslsmith_add_i32(-1i, abs(15998i))), vec3<bool>(true, (var_0.c.e & global0[_wgslsmith_index_u32(u_input.a, 9u)]) > 1i, global1.d.b), 28232i));
    return Struct_2(select(~_wgslsmith_add_vec3_u32(vec3<u32>(global1.d.a.x, u_input.a, var_0.c.a.x), ~global1.c.a.zzw), reverseBits(var_0.d.a.wxx), vec3<bool>(!(!var_0.c.d.x), !var_0.d.b, all(global1.c.d))), ~firstTrailingBit(vec4<i32>(-25706i, ~var_3.a, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), u_input.c.xy), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.a.x, u_input.a), vec2<u32>(var_0.a.x, 9375u)), 9u)])), var_0.c, Struct_1(~(vec4<u32>(0u, 0u, 4294967295u, 4294967295u) << (var_0.c.a % vec4<u32>(32u))), var_0.d.d.x, -vec2<i32>(-1i, -2147483647i), !(!vec3<bool>(var_0.d.d.x, false, true)), global1.b.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    let var_0 = u_input.a;
    global0 = array<i32, 9>();
    global1 = Struct_2(select(~(~arg_1.a) ^ ~global1.a, (select(vec3<u32>(u_input.a, global1.d.a.x, 5144u), global1.a, vec3<bool>(global1.c.b, true, global1.c.b)) >> (vec3<u32>(global1.a.x, 17456u, var_0) % vec3<u32>(32u))) ^ max(_wgslsmith_mult_vec3_u32(vec3<u32>(40995u, u_input.a, 88669u), vec3<u32>(4294967295u, 4294967295u, arg_1.c.a.x)), ~vec3<u32>(6888u, 29493u, 5290u)), false), vec4<i32>(-43920i, 1i, arg_2, _wgslsmith_mult_i32(-1i, ~(-32496i))), Struct_1(global1.c.a, !any(vec3<bool>(false, true, false)), arg_0.wx, vec3<bool>(true, all(vec4<bool>(true, true, arg_1.c.b, true)), !global1.d.b), -34350i), Struct_1(func_2().c.a, !arg_1.d.b, -abs(func_3().xw), select(vec3<bool>(true, global1.d.d.x, !arg_1.c.d.x), select(arg_1.c.d, select(vec3<bool>(true, false, false), vec3<bool>(true, global1.d.d.x, arg_1.c.d.x), false), select(vec3<bool>(global1.d.d.x, false, false), vec3<bool>(arg_1.d.b, arg_1.d.b, arg_1.d.b), global1.d.d)), arg_1.d.d), _wgslsmith_mod_i32(firstLeadingBit(-60316i), ~arg_0.x) << (arg_1.c.a.x % 32u)));
    var var_1 = Struct_1(_wgslsmith_div_vec4_u32(countOneBits(arg_1.c.a), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, var_0), 1u, ~15612u, ~44004u), global1.c.a)), true, ~(vec2<i32>(_wgslsmith_dot_vec4_i32(arg_1.b, vec4<i32>(-2769i, 54125i, 10532i, u_input.b)), -17i) << (global1.d.a.ww % vec2<u32>(32u))), global1.c.d, u_input.b);
    var var_2 = !global1.d.d.x;
    return func_2();
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    global0 = array<i32, 9>();
    global1 = func_4(_wgslsmith_sub_vec4_i32(func_4(vec4<i32>(-2147483647i, max(arg_0.x, u_input.c.x), global0[_wgslsmith_index_u32(arg_1.a.x, 9u)] >> (global1.a.x % 32u), -1i), arg_2, ~(-global1.b.x)).b, global1.b), arg_2, firstTrailingBit(u_input.b));
    let var_0 = any(vec2<bool>(arg_2.c.d.x, arg_1.d.x));
    global1 = arg_2;
    global1 = func_2();
    return func_2().d;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = func_4(min(global1.b, ~(arg_2 | (vec4<i32>(global0[_wgslsmith_index_u32(arg_0.a.x, 9u)], 0i, 8257i, -9074i) & vec4<i32>(arg_2.x, global1.c.e, arg_0.c.x, -12875i)))), Struct_2(vec3<u32>(u_input.a, arg_0.a.x, 37757u), arg_2, arg_0, Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 6021u, 1u, 4294967295u), global1.d.a, global1.c.a), ~arg_0.a), arg_1.x & global1.c.b, reverseBits(select(global1.d.c, vec2<i32>(arg_0.e, 10198i), vec2<bool>(false, arg_1.x))), arg_0.d, max(arg_0.e ^ -27652i, -u_input.b))), 29975i);
    var var_1 = select(vec3<i32>(i32(-1i) * -5078i, firstLeadingBit(~1i), arg_2.x), global1.b.xyx, arg_0.b);
    var var_2 = !(!(!vec4<bool>(true, arg_0.d.x, arg_1.x, false || arg_0.d.x)));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1112f + 873f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1602f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(322f, -669f))))))));
    var var_4 = Struct_3(~(-26182i), 173f);
    return Struct_2(var_0.c.a.wyy, ~(-arg_2), func_5(vec2<i32>(-2245i, func_4(vec4<i32>(arg_0.c.x, 39980i, 2188i, var_0.c.e) | vec4<i32>(var_1.x, var_0.c.c.x, arg_0.c.x, -49214i), func_2(), 56866i).c.c.x), arg_0, Struct_2(var_0.a, _wgslsmith_div_vec4_i32(abs(vec4<i32>(22426i, 1i, u_input.c.x, var_4.a)), arg_2 & global1.b), func_4(global1.b, Struct_2(vec3<u32>(var_0.d.a.x, var_0.d.a.x, global1.d.a.x), vec4<i32>(1i, 24326i, var_1.x, arg_0.e), global1.d, global1.d), -2147483647i).c, arg_0), ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 23063u), global1.a.zy), vec2<u32>(global1.a.x, u_input.a))), Struct_1(select(vec4<u32>(0u, 0u, ~u_input.a, arg_0.a.x), func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(-20368i, -18792i, u_input.c.x, 0i), vec4<i32>(arg_0.c.x, arg_2.x, global0[_wgslsmith_index_u32(u_input.a, 9u)], arg_2.x)), Struct_2(arg_0.a.xwx, vec4<i32>(9006i, var_4.a, arg_0.c.x, 1i), Struct_1(vec4<u32>(0u, 83695u, u_input.a, 4294967295u), false, vec2<i32>(global0[_wgslsmith_index_u32(global1.d.a.x, 9u)], u_input.b), var_0.c.d, -1i), Struct_1(vec4<u32>(1u, 4294967295u, 56930u, u_input.a), true, var_1.zz, vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(u_input.a, 9u)])), 2147483647i).d.a, select(!vec4<bool>(true, global1.d.d.x, arg_1.x, var_0.d.b), select(vec4<bool>(global1.c.b, arg_0.d.x, true, true), vec4<bool>(true, global1.c.d.x, false, arg_0.b), vec4<bool>(var_2.x, true, var_2.x, arg_1.x)), select(vec4<bool>(arg_0.b, var_0.d.d.x, arg_1.x, arg_1.x), vec4<bool>(true, var_0.d.d.x, var_0.c.b, false), true))), true, vec2<i32>(-977i, firstLeadingBit(~(-47409i))), vec3<bool>(arg_1.x | (true & var_2.x), arg_0.d.x, true), arg_2.x));
}

fn func_1(arg_0: vec3<bool>) -> vec4<bool> {
    global1 = func_6(func_5(u_input.c.zy, Struct_1(firstLeadingBit(~global1.d.a), true, global1.c.c, !arg_0, global1.d.e), func_4(-_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 10412i, 1i, global1.c.e), vec4<i32>(-16694i, u_input.b, -2147483647i, global1.b.x)), func_2(), (global1.b.x & u_input.c.x) & global0[_wgslsmith_index_u32(~0u, 9u)]), 38114u), vec2<bool>(any(select(vec2<bool>(true, arg_0.x), !vec2<bool>(arg_0.x, global1.d.b), global1.c.d.x)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(27013i, -2147483647i, u_input.b), u_input.c) < _wgslsmith_div_i32(abs(global1.b.x), u_input.c.x)), vec4<i32>(-15779i, func_4(reverseBits(func_2().b), Struct_2(vec3<u32>(u_input.a, 8549u, u_input.a), vec4<i32>(global0[_wgslsmith_index_u32(global1.d.a.x, 9u)], -1i, 9760i, 0i), Struct_1(vec4<u32>(u_input.a, 11907u, 48142u, u_input.a), global1.c.b, vec2<i32>(1i, 1i), vec3<bool>(true, global1.c.d.x, true), -7222i), Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, global1.d.a.x), global1.d.b, vec2<i32>(80513i, 17399i), vec3<bool>(global1.c.b, true, true), -2147483647i)), global0[_wgslsmith_index_u32(func_4(global1.b, func_4(global1.b, Struct_2(global1.c.a.wzz, vec4<i32>(global1.d.c.x, u_input.b, global1.b.x, global1.b.x), Struct_1(global1.d.a, global1.d.d.x, vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], global1.c.c.x), vec3<bool>(false, arg_0.x, arg_0.x), -13639i), Struct_1(vec4<u32>(u_input.a, 4294967295u, 0u, 4294967295u), true, u_input.c.zx, vec3<bool>(arg_0.x, arg_0.x, true), global1.c.e)), -42458i), _wgslsmith_sub_i32(global1.b.x, u_input.b)).c.a.x, 9u)]).d.e, ~1i, 1i));
    var var_0 = -1i;
    let var_1 = ~vec2<u32>(4294967295u, _wgslsmith_mod_u32(28805u, 44483u));
    var var_2 = func_3().x;
    global0 = array<i32, 9>();
    return select(select(!(!vec4<bool>(global1.c.d.x, global1.c.b, arg_0.x, false)), select(!vec4<bool>(true, global1.d.d.x, true, arg_0.x), vec4<bool>(true, 4294967295u == global1.a.x, true, global1.c.b & true), vec4<bool>(true, true, true, true)), select(!vec4<bool>(false, true, global1.c.b, arg_0.x), vec4<bool>(true, true, u_input.c.x < 2147483647i, !global1.c.d.x), select(vec4<bool>(arg_0.x, false, true, false), select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(false, false, false, global1.d.d.x), true), select(vec4<bool>(global1.d.d.x, arg_0.x, arg_0.x, false), vec4<bool>(true, global1.d.d.x, true, arg_0.x), arg_0.x)))), select(!(!(!vec4<bool>(global1.c.b, global1.d.b, arg_0.x, arg_0.x))), !select(vec4<bool>(arg_0.x, arg_0.x, true, global1.d.d.x), !vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, true)), any(select(select(vec4<bool>(global1.c.d.x, global1.d.d.x, false, false), vec4<bool>(arg_0.x, global1.c.b, true, false), arg_0.x), !vec4<bool>(true, true, arg_0.x, arg_0.x), select(arg_0.x, true, true)))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!vec4<bool>(false | global1.c.d.x, true, global1.c.b, all(global1.d.d)), select(select(func_1(vec3<bool>(global1.d.b, true, true)), !vec4<bool>(global1.d.d.x, false, true, true), false), select(!vec4<bool>(global1.d.b, global1.c.d.x, false, false), select(vec4<bool>(false, global1.d.b, global1.c.d.x, false), vec4<bool>(global1.c.b, false, global1.c.b, global1.d.b), vec4<bool>(true, global1.d.d.x, global1.d.b, false)), true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(global1.a.x, 9u)] > -1i, true)), select(!select(vec4<bool>(true, global1.c.d.x, false, true), vec4<bool>(true, global1.d.d.x, false, false), true), !select(vec4<bool>(global1.c.d.x, global1.d.b, false, global1.c.d.x), vec4<bool>(false, false, false, global1.c.b), false), !func_1(global1.c.d))), vec4<bool>(!(_wgslsmith_f_op_f32(select(-895f, -675f, true)) == _wgslsmith_f_op_f32(f32(-1f) * -743f)), !(!(global1.d.b && global1.d.d.x)), global1.d.d.x, global1.d.b), !(!(!func_1(global1.d.d))));
    var var_1 = !func_1(var_0.wxz).xww;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -357f);
    var_1 = var_0.yxx;
    let var_3 = Struct_3(global1.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -978f)), -420f))));
    let var_4 = func_2();
    var_1 = select(vec3<bool>(!(_wgslsmith_f_op_f32(-var_2) >= _wgslsmith_f_op_f32(step(var_2, -119f))), var_4.d.b, var_4.d.b != var_4.d.b), var_0.xyw, vec3<bool>(_wgslsmith_dot_vec2_u32(~vec2<u32>(9248u, 0u), vec2<u32>(39267u, 0u)) == (countOneBits(global1.c.a.x) ^ u_input.a), !(_wgslsmith_f_op_f32(abs(var_2)) == _wgslsmith_f_op_f32(select(var_3.b, 560f, var_4.c.d.x))), all(!func_4(vec4<i32>(0i, -49972i, -1i, var_3.a), var_4, 21211i).d.d)));
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~u_input.a, var_4.a.x | 38656u), var_4.b.xxx, var_4.c.a.xwy, 0u);
}

