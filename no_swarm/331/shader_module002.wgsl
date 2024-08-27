struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false));

var<private> global1: array<Struct_1, 8>;

var<private> global2: vec2<u32> = vec2<u32>(1954u, 4294967295u);

var<private> global3: vec4<u32> = vec4<u32>(4752u, 34630u, 34935u, 35160u);

var<private> global4: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec3<i32>(-6989i, 6679i, 1i), Struct_1(vec2<bool>(false, false)), vec2<u32>(0u, 49331u), vec3<u32>(20798u, 27791u, 1u)), Struct_2(vec3<i32>(2147483647i, -60977i, -72699i), Struct_1(vec2<bool>(false, true)), vec2<u32>(0u, 2833u), vec3<u32>(4294967295u, 18052u, 24793u)), Struct_2(vec3<i32>(2147483647i, 17634i, -35966i), Struct_1(vec2<bool>(true, false)), vec2<u32>(0u, 20044u), vec3<u32>(0u, 6720u, 4294967295u)), Struct_2(vec3<i32>(-18072i, 34631i, -11763i), Struct_1(vec2<bool>(true, false)), vec2<u32>(64128u, 35312u), vec3<u32>(6263u, 1u, 4294967295u)), Struct_2(vec3<i32>(-1i, 16162i, 2147483647i), Struct_1(vec2<bool>(false, false)), vec2<u32>(4294967295u, 68043u), vec3<u32>(45308u, 24881u, 1u)), Struct_2(vec3<i32>(-3976i, i32(-2147483648), 0i), Struct_1(vec2<bool>(false, true)), vec2<u32>(14983u, 1u), vec3<u32>(0u, 62204u, 50955u)), Struct_2(vec3<i32>(-25715i, -1i, -1i), Struct_1(vec2<bool>(false, false)), vec2<u32>(4294967295u, 9848u), vec3<u32>(8314u, 66316u, 42289u)), Struct_2(vec3<i32>(2147483647i, 2147483647i, 2147483647i), Struct_1(vec2<bool>(false, false)), vec2<u32>(1u, 0u), vec3<u32>(55367u, 1u, 1u)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = min(0u, 4294967295u) != countOneBits(global2.x);
    global1 = array<Struct_1, 8>();
    global1 = array<Struct_1, 8>();
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(~arg_0, _wgslsmith_add_u32(global2.x, _wgslsmith_clamp_u32(max(global2.x, global2.x), u_input.b, 1u))), ~firstLeadingBit(~reverseBits(global2.x))), 8u)];
    global0 = var_1.b;
    return var_1.a.x;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: i32, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 0i, -6284i, u_input.a.x), -vec4<i32>(arg_2, 0i, 41103i, 0i)), func_3(global2.x)), _wgslsmith_mult_vec3_i32(~firstLeadingBit(vec3<i32>(u_input.a.x, arg_2, arg_3.x)), vec3<i32>(_wgslsmith_mod_i32(arg_3.x, 1i), reverseBits(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, -1i, 2147483647i), vec4<i32>(arg_2, 16653i, arg_2, u_input.a.x))))), u_input.a.x, u_input.a.x);
    var var_1 = global0.a.x;
    let var_2 = ~countOneBits(global2.x & u_input.c.x);
    var var_3 = global4[_wgslsmith_index_u32(~1778u, 8u)];
    var_0 = ~(-_wgslsmith_mult_vec3_i32(~var_3.a << (abs(global3.yxx) % vec3<u32>(32u)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_3.x, arg_2, 51481i), arg_3), abs(vec3<i32>(var_3.a.x, var_3.a.x, u_input.a.x)), false)));
    return vec2<bool>(!(~arg_1.x < reverseBits(90757u | u_input.b)), global0.a.x);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = vec4<bool>(true, all(vec3<bool>(true, global0.a.x, any(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)))), any(arg_0), !(!all(global0.a) && (~u_input.a.x != u_input.a.x)));
    let var_1 = vec3<i32>(~abs(_wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-29487i, 2147483647i)))), ~_wgslsmith_div_i32(u_input.a.x, -(~u_input.a.x)), _wgslsmith_mult_i32(2147483647i, u_input.a.x));
    let var_2 = !select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), select(global0.a, vec2<bool>(arg_0.x, false), false), false || arg_0.x), !(!arg_0.x)), !select(func_2(global2.x, vec3<u32>(global2.x, 0u, 35866u), var_1.x, var_1), vec2<bool>(true, global0.a.x), func_2(global3.x, global3.wxz, 2147483647i, var_1)), !(!vec2<bool>(false, arg_0.x)));
    global4 = array<Struct_2, 8>();
    var var_3 = arg_0.x;
    return Struct_1(!(!select(var_2, vec2<bool>(arg_0.x, false), true)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = arg_1.c.x;
    global4 = array<Struct_2, 8>();
    global4 = array<Struct_2, 8>();
    var var_1 = Struct_2(-firstTrailingBit(vec3<i32>(max(arg_1.a.x, u_input.a.x), -24174i >> (arg_1.d.x % 32u), ~arg_1.a.x)), Struct_1(!func_1(vec3<bool>(true, true, true)).a), u_input.c, ~(~arg_1.d));
    var var_2 = Struct_2(var_1.a, Struct_1(select(vec2<bool>(true, !var_1.b.a.x), global0.a, !(!var_1.b.a))), abs(vec2<u32>(~select(56241u, var_1.c.x, global0.a.x), ~(~global2.x))), ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~global3.yyy, ~vec3<u32>(global3.x, var_1.d.x, var_0)), select(var_1.d & vec3<u32>(49746u, global2.x, var_0), global3.yyy, vec3<bool>(true, true, true))));
    return Struct_1(!var_2.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.c.x, Struct_2(-countOneBits(vec3<i32>(2147483647i, u_input.a.x, 2147483647i)), func_1(vec3<bool>(true, false, !global0.a.x)), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(global3.x, u_input.c.x), ~vec2<u32>(global2.x, global2.x), vec2<u32>(global2.x, global3.x) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), vec3<u32>(~(~66044u), ~global3.x, ~(~4294967295u))), select(countOneBits((15360i & u_input.a.x) | countOneBits(2147483647i)), -80306i, true & (false | any(vec4<bool>(global0.a.x, false, false, global0.a.x)))));
    let var_1 = Struct_2(firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), ~11030i), u_input.a.x, ~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x))), Struct_1(func_1(select(select(vec3<bool>(true, true, global0.a.x), vec3<bool>(true, false, global0.a.x), var_0.a.x), select(vec3<bool>(true, true, global0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, global0.a.x), var_0.a.x), !vec3<bool>(var_0.a.x, false, var_0.a.x))).a), ~(~vec2<u32>(global2.x, global3.x)) & vec2<u32>(~_wgslsmith_mod_u32(4294967295u, u_input.c.x), (global2.x & 4294967295u) & ~37664u), select(vec3<u32>(global3.x, ~global3.x, _wgslsmith_dot_vec3_u32(global3.zww | global3.wzx, ~global3.zzz)), vec3<u32>(global3.x, global2.x, 4294967295u), select(vec3<bool>(global0.a.x && false, true | global0.a.x, var_0.a.x), !(!vec3<bool>(false, var_0.a.x, var_0.a.x)), _wgslsmith_mult_u32(global2.x, 25633u) <= 0u)));
    global4 = array<Struct_2, 8>();
    global2 = vec2<u32>(u_input.c.x, abs(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(global2.x, 6261u), 1u), ~global2.x)));
    let var_2 = -(~(-min(~vec4<i32>(u_input.a.x, var_1.a.x, var_1.a.x, var_1.a.x), ~vec4<i32>(5262i, u_input.a.x, 0i, var_1.a.x))));
    var var_3 = max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, global2.x, reverseBits(~u_input.c.x), 4294967295u), ~abs(countOneBits(vec4<u32>(9888u, 1u, global2.x, 4294967295u)))), ~(~(abs(vec4<u32>(4294967295u, var_1.c.x, 7531u, 39598u)) ^ firstTrailingBit(vec4<u32>(global3.x, 6664u, u_input.b, 4294967295u)))));
    global2 = _wgslsmith_add_vec2_u32(~(~global3.xy), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, 1f), ~(~u_input.c.x));
}

