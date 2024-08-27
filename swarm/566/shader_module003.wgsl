struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

var<private> global0: Struct_3;

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 21> = array<u32, 21>(4307u, 0u, 46918u, 0u, 36753u, 0u, 0u, 0u, 4294967295u, 0u, 0u, 4294967295u, 101155u, 1u, 81353u, 126989u, 0u, 90818u, 1u, 36073u, 26557u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> f32 {
    return 1031f;
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1278f, global0.b.d, arg_2.d) * vec3<f32>(513f, 335f, 1158f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-305f, -496f, -533f), vec3<f32>(632f, global0.c.e.d, -1000f)))) * vec3<f32>(_wgslsmith_div_f32(-270f, 1918f), _wgslsmith_f_op_f32(select(1805f, arg_0, true)), _wgslsmith_f_op_f32(-arg_0))))));
    let var_1 = u_input.b.x & ~(~global0.c.c.x);
    var var_2 = global0.c;
    let var_3 = firstTrailingBit(0u);
    var var_4 = var_2.e.a.x;
    return Struct_3(-max(var_2.e.b, firstTrailingBit(~vec3<i32>(-12090i, arg_1.x, 10862i))), Struct_1(select(select(vec3<bool>(true, true, true), global0.c.d.a, false), vec3<bool>(arg_1.x > var_2.e.b.x, true, global0.c.e.e.x), select(!arg_2.a.x, false, !global0.b.a.x)), -(~(arg_2.b ^ global0.b.b)), arg_1.x, arg_0, select(!var_2.e.e, vec2<bool>(global0.c.e.e.x, true), global0.c.a.e.x)), Struct_2(arg_2, global0.c.b << (var_2.c % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(global1.xwx, global0.c.b), global0.b, var_2.d));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    global2 = array<u32, 21>();
    let var_0 = any(vec2<bool>(any(arg_0.b.a), true));
    var var_1 = Struct_2(Struct_1(!(!global0.b.a), arg_1.b, 1i, _wgslsmith_f_op_f32(-709f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1327f)))), !select(vec2<bool>(false, false), global0.b.a.xz, true)), vec3<u32>(_wgslsmith_add_u32(~global2[_wgslsmith_index_u32(arg_0.c.c.x, 21u)], 1u), 1u, 17261u), arg_0.c.c, Struct_1(!select(select(arg_1.a, vec3<bool>(false, var_0, global0.c.e.a.x), vec3<bool>(true, arg_1.a.x, arg_1.a.x)), arg_0.c.a.a, global0.b.a.x), reverseBits(_wgslsmith_clamp_vec3_i32(reverseBits(arg_0.a), global0.a, arg_0.c.e.b)), ~reverseBits(arg_2.x >> (global1.x % 32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global0.c.e.d)), _wgslsmith_f_op_f32(func_2(u_input.a, !arg_1.e, Struct_1(vec3<bool>(global0.b.a.x, arg_1.a.x, global0.c.a.a.x), arg_0.a, -29763i, 2585f, global0.c.e.a.yz), -23774i)))), func_3(840f, abs(-vec4<i32>(arg_2.x, 20236i, global0.c.d.c, 2147483647i)), func_3(_wgslsmith_f_op_f32(sign(-1960f)), min(vec4<i32>(global0.b.b.x, arg_2.x, arg_0.c.a.c, 29383i), vec4<i32>(global0.b.c, 1i, arg_0.a.x, arg_1.c)), Struct_1(arg_0.c.d.a, vec3<i32>(-22643i, arg_0.c.a.c, 7785i), arg_0.a.x, global0.c.e.d, vec2<bool>(global0.b.e.x, arg_0.c.a.e.x))).b).b.e), func_3(_wgslsmith_f_op_f32(468f + arg_0.b.d), vec4<i32>(-_wgslsmith_div_i32(0i, arg_0.c.d.b.x), _wgslsmith_div_i32(arg_1.b.x, ~0i), ~(~25197i), -_wgslsmith_clamp_i32(-1i, -17876i, arg_1.b.x)), func_3(-133f, reverseBits(countOneBits(vec4<i32>(arg_0.a.x, global0.a.x, global0.b.b.x, arg_0.a.x))), func_3(_wgslsmith_f_op_f32(-483f - arg_1.d), vec4<i32>(arg_0.b.b.x, -9i, 1i, arg_0.c.a.c) | vec4<i32>(1i, arg_2.x, -46950i, -7828i), Struct_1(global0.c.d.a, vec3<i32>(global0.c.a.b.x, arg_0.b.b.x, arg_2.x), arg_2.x, -448f, vec2<bool>(arg_0.b.e.x, global0.c.d.a.x))).b).b).b);
    var var_2 = func_3(arg_1.d, _wgslsmith_div_vec4_i32(-abs(_wgslsmith_add_vec4_i32(vec4<i32>(global0.a.x, -33984i, arg_0.c.e.c, 2147483647i), vec4<i32>(50202i, 0i, -12293i, -2147483647i))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.d.b.x, _wgslsmith_clamp_i32(-2147483647i, arg_2.x, -31413i), 1684i, 4559i), vec4<i32>(-arg_1.b.x, var_1.a.c, _wgslsmith_mult_i32(global0.b.c, 25179i), -global0.c.e.c))), Struct_1(arg_1.a, var_1.d.b, var_1.d.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-108f, global0.c.e.d))))), global0.b.e)).c;
    var var_3 = _wgslsmith_mult_vec3_u32(countOneBits(select(vec3<u32>(global1.x, 4294967295u, global2[_wgslsmith_index_u32(var_1.c.x, 21u)]), vec3<u32>(global2[_wgslsmith_index_u32(1u, 21u)], 4615u, arg_0.c.b.x), true) >> (vec3<u32>(global1.x, u_input.a, 1u) % vec3<u32>(32u))), vec3<u32>(var_1.c.x, (var_2.b.x << (2815u % 32u)) >> (global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.x, 1u), 21u)] % 32u), 0u)) | global0.c.c;
    return func_3(-522f, _wgslsmith_sub_vec4_i32(~(~vec4<i32>(global0.c.e.b.x, -2147483647i, arg_2.x, 2147483647i)) | vec4<i32>(max(2147483647i, var_2.d.b.x), arg_2.x, reverseBits(3247i), arg_0.c.d.b.x), _wgslsmith_mod_vec4_i32(-(vec4<i32>(-13961i, var_1.e.c, arg_0.a.x, 2147483647i) >> (vec4<u32>(arg_0.c.b.x, 0u, global1.x, 1u) % vec4<u32>(32u))), vec4<i32>(-2147483647i, 0i, -7869i, var_2.e.c))), Struct_1(!(!func_3(var_1.e.d, vec4<i32>(arg_0.b.b.x, 0i, -1i, var_1.d.b.x), Struct_1(var_1.e.a, var_2.d.b, var_1.a.b.x, global0.c.a.d, global0.b.e)).b.a), -vec3<i32>(arg_1.b.x, 2147483647i, max(var_2.a.c, 23197i)), arg_2.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(step(arg_0.c.d.d, 569f)), -vec4<i32>(-46560i, -2147483647i, 1i, global0.b.b.x), func_3(arg_0.b.d, vec4<i32>(var_2.e.c, arg_2.x, arg_0.c.a.c, 689i), arg_1).b).b.d + _wgslsmith_f_op_f32(var_2.d.d * 940f)), !(!arg_1.e))).b;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<bool>) -> u32 {
    var var_0 = Struct_2(func_4(func_3(_wgslsmith_f_op_f32(func_2(1u, !global0.b.e, Struct_1(vec3<bool>(arg_2.d.e.x, global0.b.a.x, false), arg_2.d.b, 13530i, 578f, global0.b.e), ~2147483647i)), vec4<i32>(arg_1.a.x & arg_1.a.x, ~13448i, arg_1.a.x & 2147483647i, _wgslsmith_mod_i32(arg_1.b.c, 87259i)), global0.c.a), arg_2.d, -select(max(arg_2.a.b, vec3<i32>(2147483647i, -1i, 0i)), -vec3<i32>(-1i, -28775i, arg_1.a.x), vec3<bool>(arg_1.c.e.a.x, true, arg_0.x))), global0.c.b, ~(~arg_2.b), Struct_1(vec3<bool>(arg_1.b.e.x, any(!arg_0), u_input.b.x != 65496u), -global0.b.b << (~vec3<u32>(global2[_wgslsmith_index_u32(global0.c.c.x, 21u)], global0.c.c.x, 3480u) % vec3<u32>(32u)), _wgslsmith_dot_vec3_i32(-arg_2.a.b, abs(_wgslsmith_sub_vec3_i32(global0.b.b, arg_1.a))), _wgslsmith_f_op_f32(-arg_2.d.d), vec2<bool>(false, arg_2.d.a.x)), global0.c.a);
    global2 = array<u32, 21>();
    let var_1 = Struct_2(arg_1.b, _wgslsmith_add_vec3_u32(global1.zyx, max(firstLeadingBit(~var_0.c), vec3<u32>(22692u, ~arg_2.b.x, ~global0.c.c.x))), _wgslsmith_mod_vec3_u32(global1.zwz, vec3<u32>(~(~global0.c.c.x), (26408u << (1u % 32u)) | func_3(-576f, vec4<i32>(1i, 801i, -6276i, var_0.d.c), Struct_1(var_0.d.a, vec3<i32>(1i, global0.a.x, -2147483647i), global0.c.e.b.x, 236f, vec2<bool>(global0.b.e.x, true))).c.c.x, _wgslsmith_dot_vec2_u32(~var_0.b.xx, global0.c.c.xx))), func_3(arg_1.b.d, select(vec4<i32>(-11157i ^ arg_2.a.c, -2147483647i, -31871i, 2147483647i), vec4<i32>(reverseBits(0i), ~global0.a.x, ~arg_1.c.a.b.x, min(27846i, 54322i)), !select(vec4<bool>(arg_0.x, true, arg_0.x, true), arg_0, arg_3.x)), arg_2.e).c.d, arg_2.d);
    global0 = arg_1;
    var var_2 = var_0.a;
    return ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.c.x, 92700u, 1u, global1.x) & (vec4<u32>(arg_2.b.x, 0u, var_0.b.x, global2[_wgslsmith_index_u32(arg_2.b.x, 21u)]) << (vec4<u32>(75827u, global0.c.b.x, global1.x, 5493u) % vec4<u32>(32u))), ~vec4<u32>(52902u, 563u, var_0.c.x, 14679u)), ~(~abs(vec4<u32>(1u, arg_2.c.x, 4294967295u, global1.x))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: f32, arg_3: i32) -> vec3<f32> {
    global1 = vec4<u32>(global0.c.c.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, u_input.a, 74986u), global2[_wgslsmith_index_u32(arg_0.x, 21u)]) & _wgslsmith_sub_u32(firstTrailingBit(u_input.b.x), arg_0.x), global0.c.b.x ^ 1u), arg_0.x, func_3(_wgslsmith_f_op_f32(-1582f * _wgslsmith_f_op_f32(abs(-957f))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3, arg_3, -2857i, 2147483647i), vec4<i32>(2147483647i, -1i, 2147483647i, -31001i)) | -vec4<i32>(-1i, -20315i, 2147483647i, -20956i), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global0.b.c, -17354i, global0.b.c), vec4<i32>(0i, arg_3, 1i, 47666i)), vec4<i32>(arg_3, arg_3, global0.a.x, arg_3) << (vec4<u32>(1u, arg_0.x, 0u, 4294967295u) % vec4<u32>(32u)))), Struct_1(vec3<bool>(global0.b.e.x, true, arg_0.x != u_input.a), vec3<i32>(-arg_3, _wgslsmith_mult_i32(global0.a.x, -30730i), arg_3), ~abs(arg_3), -999f, global0.b.a.yx)).c.c.x);
    var var_0 = func_3(_wgslsmith_f_op_f32(-1122f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_2))))))), vec4<i32>(0i, global0.b.c, 1i, arg_3), Struct_1(global0.b.a, global0.b.b, arg_3, _wgslsmith_div_f32(arg_2, func_3(_wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -60538i, arg_3), vec4<i32>(-3369i, 14744i, -2147483647i, 57348i), vec4<i32>(-1i, arg_3, arg_3, -2147483647i)), Struct_1(global0.b.a, vec3<i32>(global0.b.c, 1i, 41291i), -2147483647i, 116f, vec2<bool>(global0.c.e.a.x, global0.b.e.x))).b.d), vec2<bool>(!global0.b.a.x, false))).c;
    let var_1 = 1u;
    let var_2 = -1163f;
    var var_3 = vec2<u32>(global0.c.b.x, func_1(!vec4<bool>(func_3(var_2, vec4<i32>(global0.a.x, arg_3, 1i, 0i), global0.c.e).c.a.a.x, global0.b.e.x, all(global0.c.a.a.zx), true), Struct_3(global0.a, global0.b, global0.c), Struct_2(func_3(1289f, vec4<i32>(arg_3, global0.c.e.c, global0.c.d.c, var_0.e.b.x) << (vec4<u32>(21710u, 0u, global2[_wgslsmith_index_u32(global0.c.c.x, 21u)], u_input.a) % vec4<u32>(32u)), global0.c.a).c.e, vec3<u32>(select(arg_1.x, 87627u, false), ~16780u, arg_1.x), arg_1, Struct_1(!vec3<bool>(var_0.e.a.x, var_0.a.e.x, global0.c.e.a.x), abs(var_0.a.b), _wgslsmith_add_i32(arg_3, 2147483647i), var_0.a.d, !vec2<bool>(var_0.a.a.x, true)), Struct_1(!var_0.d.a, vec3<i32>(global0.c.d.b.x, global0.a.x, global0.b.b.x) << (vec3<u32>(0u, var_0.c.x, 1u) % vec3<u32>(32u)), abs(-31873i), -2201f, vec2<bool>(false, false))), func_4(Struct_3(global0.b.b, var_0.d, Struct_2(Struct_1(var_0.d.a, var_0.a.b, -25032i, -1662f, vec2<bool>(true, true)), vec3<u32>(u_input.b.x, 4294967295u, 73676u), global1.xyy, var_0.e, Struct_1(var_0.d.a, vec3<i32>(-1i, arg_3, 1i), global0.b.c, arg_2, vec2<bool>(false, false)))), func_4(func_3(arg_2, vec4<i32>(var_0.a.b.x, arg_3, 21381i, var_0.d.b.x), global0.c.e), func_3(var_0.e.d, vec4<i32>(arg_3, 50022i, 1i, 27568i), Struct_1(vec3<bool>(global0.b.a.x, false, var_0.d.e.x), vec3<i32>(var_0.e.c, -35781i, global0.b.c), var_0.d.b.x, 167f, global0.b.e)).c.e, global0.c.a.b), ~(~var_0.a.b)).e));
    return vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), var_0.d.d)), 721f, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.d;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_5(max(~vec4<u32>(global2[_wgslsmith_index_u32(~0u, 21u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], 37873u), vec2<u32>(global0.c.b.x, global2[_wgslsmith_index_u32(0u, 21u)])), func_1(vec4<bool>(global0.c.e.e.x, true, false, false), Struct_3(var_0.b, global0.b, global0.c), Struct_2(global0.b, vec3<u32>(57632u, 1u, 45067u), vec3<u32>(23214u, u_input.b.x, global2[_wgslsmith_index_u32(6744u, 21u)]), Struct_1(vec3<bool>(true, global0.c.d.e.x, var_0.a.x), vec3<i32>(var_0.b.x, global0.c.e.c, var_0.c), global0.b.c, var_0.d, var_0.e), global0.b), var_0.e), _wgslsmith_mod_u32(14790u, u_input.b.x)), select(vec4<u32>(40660u, _wgslsmith_dot_vec3_u32(global0.c.b, vec3<u32>(u_input.a, u_input.b.x, 0u)), ~u_input.a, 0u), vec4<u32>(_wgslsmith_add_u32(18251u, global1.x), _wgslsmith_add_u32(0u, global0.c.b.x), _wgslsmith_div_u32(1u, 4294967295u), u_input.a >> (75277u % 32u)), select(select(vec4<bool>(true, var_0.a.x, global0.c.d.a.x, false), vec4<bool>(var_0.a.x, var_0.e.x, var_0.e.x, global0.c.a.e.x), vec4<bool>(global0.c.e.a.x, true, global0.c.d.a.x, true)), !vec4<bool>(false, var_0.a.x, true, var_0.a.x), 1u == global2[_wgslsmith_index_u32(0u, 21u)]))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.a, 54576u), global2[_wgslsmith_index_u32(global1.x, 21u)] | u_input.b.x, ~global0.c.b.x), ~(~vec3<u32>(global1.x, 45645u, global1.x))), var_0.d, ~_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_mod_i32(-48064i, 2147483647i)), -4943i)));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_0.d), var_1.xy)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1239f, -1000f) + vec2<f32>(global0.b.d, 1000f)) + var_1.yy)))));
    var var_3 = global0.c;
    let var_4 = global0.b.a;
    let var_5 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-246f * _wgslsmith_f_op_f32(-var_1.x))), ~firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a.b.x, -1i), var_3.e.b.zx), var_0.b.x, global0.b.b.x, -1i)), Struct_1(!(!select(var_0.a, vec3<bool>(global0.c.e.e.x, false, true), var_0.a)), _wgslsmith_mult_vec3_i32(~vec3<i32>(27711i, global0.b.b.x, -2147483647i), ~(-vec3<i32>(var_0.b.x, var_3.d.c, 0i))), ~1476i, var_0.d, vec2<bool>(1u < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 12145u, 0u), vec3<u32>(1524u, global0.c.b.x, 0u)), true))).a.zz;
    var var_6 = -2147483647i >> (var_3.b.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(3087u);
}

