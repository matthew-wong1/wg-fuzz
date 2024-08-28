struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(0u, 46187u), Struct_1(30768i, 1i, vec4<i32>(-1i, 16875i, 10898i, -32010i)));

var<private> global2: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = arg_0;
    let var_1 = ~arg_1.c.www;
    return ~countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(0u, arg_0.a.x), var_0.a.x), _wgslsmith_add_vec2_u32(~arg_0.a, vec2<u32>(76069u, global1.a.x))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global2 = arg_0;
    global2 = select(u_input.a, global1.a.x, true);
    let var_0 = 1440f;
    global0 = array<Struct_1, 3>();
    let var_1 = Struct_2(vec2<u32>(~98281u, _wgslsmith_dot_vec2_u32(vec2<u32>(10307u, global1.a.x), global1.a | vec2<u32>(1u, 1u))) & ~func_3(Struct_2(global1.a, Struct_1(global1.b.a, global1.b.b, vec4<i32>(-2953i, 1i, 2147483647i, 0i))), Struct_1(global1.b.a, -2147483647i, vec4<i32>(global1.b.c.x, 0i, global1.b.a, -8473i))), Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(0i, 1i), 8869i) & _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.b.a, global1.b.c.x), global1.b.c.zy), -global1.b.c.yz), abs((7549i & global1.b.a) >> (0u % 32u)), vec4<i32>(global1.b.c.x, global1.b.a, global1.b.b, global1.b.a)));
    return var_1.b;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = i32(-1i) * -2147483647i;
    let var_1 = global1.b;
    global1 = Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(firstLeadingBit(abs(global1.a.x)), 0u >> (u_input.a % 32u)), global1.a), func_2(u_input.a));
    var var_2 = select(true, true, true);
    var var_3 = select(vec2<bool>(!all(vec3<bool>(false, true, true)), true), vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), true), vec2<bool>(false, false));
    return Struct_2(vec2<u32>(_wgslsmith_div_u32(~1u, firstLeadingBit(_wgslsmith_mult_u32(u_input.a, u_input.a))), ~(~(u_input.a ^ global1.a.x))), Struct_1(~firstLeadingBit(_wgslsmith_mod_i32(2147483647i, 2147483647i)), ~1i, select(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, -32269i, global1.b.c.x), vec4<i32>(var_1.a, global1.b.c.x, -4821i, 0i))), _wgslsmith_mod_vec4_i32(vec4<i32>(-21533i, 0i, 56966i, -1i) | vec4<i32>(-2147483647i, global1.b.c.x, -1i, var_1.c.x), global1.b.c), !vec4<bool>(var_3.x, var_3.x, false, var_3.x))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = firstTrailingBit(4294967295u);
    var var_1 = vec4<i32>(min(global1.b.a | countOneBits(countOneBits(1i)), arg_1.b.c.x), arg_0.b.c.x ^ -(func_4(Struct_1(global1.b.a, global1.b.a, global1.b.c)).b.a ^ ~arg_1.b.c.x), min(_wgslsmith_dot_vec2_i32(min(~vec2<i32>(-64354i, 10838i), vec2<i32>(-1i, global1.b.a)), global1.b.c.yy << ((global1.a ^ vec2<u32>(47757u, 0u)) % vec2<u32>(32u))), -14153i), _wgslsmith_clamp_i32(arg_0.b.b, select(-2147483647i, -_wgslsmith_dot_vec2_i32(global1.b.c.xw, vec2<i32>(35642i, arg_0.b.c.x)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), false))), -abs(~(-17804i))));
    var_1 = vec4<i32>(8977i, -_wgslsmith_div_i32(func_2(41064u).c.x, -27074i), 2147483647i, _wgslsmith_mod_i32(arg_0.b.c.x, -var_1.x)) >> (min(vec4<u32>(1u, 80011u, 0u, arg_0.a.x), select(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.a.x, 1u, 2036u, 12112u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, arg_1.a.x, 31476u), vec4<u32>(arg_0.a.x, 4879u, arg_0.a.x, 0u))), ~vec4<u32>(var_0, 4294967295u, var_0, u_input.a), all(vec3<bool>(true, true, true)))) % vec4<u32>(32u));
    let var_2 = ~abs(vec3<u32>(6619u, arg_1.a.x | 1u, ~arg_1.a.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(278f, -303f), _wgslsmith_div_vec2_f32(vec2<f32>(-1214f, 477f), vec2<f32>(-852f, 449f))))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(617f - -377f)), _wgslsmith_f_op_f32(-183f * 1000f))));
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_u32(global1.a, select(vec2<u32>(firstLeadingBit(46848u) & arg_2.a.x, _wgslsmith_sub_u32(1u, u_input.a) >> (~1u % 32u)), ~abs(vec2<u32>(0u, 87290u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-121f, -530f, true)) + 1f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2278f))));
    var var_1 = func_4(Struct_1(global1.b.b, ~arg_1.x, global1.b.c));
    let var_2 = _wgslsmith_add_u32(15618u & _wgslsmith_clamp_u32(~(~43884u), firstLeadingBit(1u), var_1.a.x), ~1u);
    let var_3 = Struct_1(~firstTrailingBit(~(i32(-1i) * -1i)), 0i, func_5(func_4(func_2(~arg_2.a.x)), arg_2).b.c);
    let var_4 = -2147483647i;
    return func_2(~func_3(func_5(Struct_2(vec2<u32>(61241u, 1u), Struct_1(1i, arg_1.x, vec4<i32>(-3327i, -7894i, 17406i, 23852i))), Struct_2(arg_2.a, global0[_wgslsmith_index_u32(arg_0.a.x, 3u)])), func_5(func_5(Struct_2(var_1.a, Struct_1(-51498i, -11786i, vec4<i32>(19191i, 1i, -5366i, arg_1.x))), Struct_2(arg_0.a, arg_0.b)), arg_2).b).x);
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    global0 = array<Struct_1, 3>();
    var var_0 = 54281i;
    global0 = array<Struct_1, 3>();
    let var_1 = func_6(func_5(Struct_2(vec2<u32>(32276u, 1u), global0[_wgslsmith_index_u32(u_input.a, 3u)]), func_4(func_2(~71977u))), _wgslsmith_mod_vec3_i32(~vec3<i32>(global1.b.b ^ -1i, global1.b.a, func_5(Struct_2(vec2<u32>(16158u, 1u), global1.b), Struct_2(vec2<u32>(46056u, 0u), global1.b)).b.c.x), global1.b.c.xzz), Struct_2(arg_0.yy, func_4(global1.b).b));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-1114f)), _wgslsmith_f_op_f32(-400f * -920f), _wgslsmith_f_op_f32(-1363f - 756f))))));
    return i32(-1i) * -5626i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    global1 = Struct_2(countOneBits(~(~global1.a)) ^ ~vec2<u32>(countOneBits(35186u), u_input.a ^ var_0.x), Struct_1(func_1(select(vec3<u32>(0u, u_input.a, var_0.x), ~vec3<u32>(var_0.x, 66013u, 1u), vec3<bool>(true, true, true))), global1.b.a, _wgslsmith_div_vec4_i32(global1.b.c, max(func_5(Struct_2(vec2<u32>(global1.a.x, global1.a.x), global0[_wgslsmith_index_u32(10160u, 3u)]), Struct_2(vec2<u32>(global1.a.x, var_0.x), global0[_wgslsmith_index_u32(76164u, 3u)])).b.c, max(global1.b.c, global1.b.c)))));
    var var_1 = Struct_2(_wgslsmith_clamp_vec2_u32(abs(global1.a), global1.a, ~(firstLeadingBit(global1.a) | _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 12713u), vec2<u32>(var_0.x, 1u)))), global0[_wgslsmith_index_u32(var_0.x, 3u)]);
    global1 = func_5(func_4(var_1.b), func_5(func_5(func_5(Struct_2(global1.a, Struct_1(-1i, -28985i, vec4<i32>(var_1.b.a, var_1.b.a, -1i, global1.b.a))), func_5(Struct_2(global1.a, Struct_1(-18804i, 2147483647i, var_1.b.c)), Struct_2(vec2<u32>(global1.a.x, 4294967295u), Struct_1(var_1.b.c.x, var_1.b.c.x, global1.b.c)))), func_5(Struct_2(vec2<u32>(15133u, 4294967295u), var_1.b), Struct_2(vec2<u32>(u_input.a, 4294967295u), Struct_1(var_1.b.c.x, var_1.b.b, vec4<i32>(34684i, -26739i, global1.b.b, var_1.b.b))))), Struct_2(abs(vec2<u32>(1u, 19516u) & var_1.a), var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(max(firstTrailingBit(_wgslsmith_mod_vec2_u32(select(global1.a, global1.a, vec2<bool>(false, true)), vec2<u32>(var_0.x, var_0.x))), ~global1.a ^ vec2<u32>(select(0u, 0u, true), global1.a.x)), var_1.a);
}

