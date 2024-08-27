struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<f32>, 13>;

var<private> global2: vec2<f32> = vec2<f32>(1672f, 1832f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> bool {
    let var_0 = arg_2;
    global0 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~(vec4<u32>(28849u, 27937u, 43036u, 16741u) & vec4<u32>(arg_1.c, arg_1.a.x, 21211u, u_input.a.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(38972u, u_input.c, 0u, arg_3.c), vec4<u32>(1u, 59171u, 110692u, 2354u) << (vec4<u32>(44213u, 34101u, u_input.a.x, arg_2) % vec4<u32>(32u)), vec4<u32>(15203u, 33942u, 34714u, var_0))), max(abs(vec4<u32>(10196u, arg_1.a.x, arg_2, 67452u) | vec4<u32>(arg_0.x, 45518u, 0u, 4294967295u)), vec4<u32>(arg_0.x, 21737u, abs(u_input.a.x), 44630u)), vec4<u32>(firstTrailingBit(1u), ~4294967295u, 33005u, u_input.c)), vec4<u32>(abs(u_input.c), abs(_wgslsmith_add_u32(arg_0.x, arg_1.a.x) << (~var_0 % 32u)), _wgslsmith_dot_vec3_u32(firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.a.x, arg_3.a.x, 1u))), ~(global0.xyx | global0.yyw)), firstTrailingBit(_wgslsmith_mult_u32(arg_2, 1u) >> (_wgslsmith_mod_u32(50915u, arg_1.a.x) % 32u))));
    let var_1 = arg_1.c;
    global2 = global1[_wgslsmith_index_u32(max(arg_2, ~min(~var_0, 4294967295u & arg_2)) >> (17033u % 32u), 13u)];
    return any(select(vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec4<bool>(false, false, false, false))), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(true, false, true))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
}

fn func_2() -> Struct_2 {
    var var_0 = !(!vec4<bool>(true, !func_3(vec2<u32>(u_input.a.x, 4294967295u), Struct_2(global0.wy, 816f, global0.x, Struct_1(vec2<i32>(u_input.d.x, u_input.d.x))), 6590u, Struct_2(vec2<u32>(28171u, global0.x), -278f, global0.x, Struct_1(vec2<i32>(37812i, -2147483647i)))), true, false));
    return Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(select(global0.ww, global0.yz, vec2<bool>(var_0.x, false)), min(u_input.a.xx, global0.yw)), global0.zz), vec2<u32>(~u_input.a.x, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 1881f)) * global2.x)), 644u, Struct_1(_wgslsmith_add_vec2_i32(u_input.b, _wgslsmith_clamp_vec2_i32(min(u_input.b, vec2<i32>(-41819i, 12199i)), _wgslsmith_mult_vec2_i32(u_input.d.zx, vec2<i32>(-57469i, u_input.b.x)), vec2<i32>(u_input.d.x, -2147483647i)))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = ~15665u;
    var var_1 = !(!(!vec4<bool>(false, all(vec2<bool>(false, false)), true, true)));
    let var_2 = func_2();
    let var_3 = 22629u;
    let var_4 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(vec4<u32>(var_2.a.x, var_3, 28042u, 14811u) | vec4<u32>(var_2.c, 52871u, var_3, 54140u)), ~vec4<u32>(global0.x, 4294967295u, var_0, var_2.c) ^ ~vec4<u32>(u_input.c, var_0, var_0, 12731u)), vec4<u32>(1u, ~(u_input.a.x ^ 59746u), max(min(var_3, 322u), 32464u & var_3), 54776u)), 9798u, ~(~40336u));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>) -> vec2<u32> {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(195f + _wgslsmith_f_op_f32(f32(-1f) * -465f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global2.x, arg_0.b)))) - _wgslsmith_f_op_f32(round(1000f)))));
    global0 = abs(countOneBits(vec4<u32>(global0.x, 1u & u_input.c, arg_0.c, global0.x)));
    global0 = select(min(firstTrailingBit(~vec4<u32>(global0.x, u_input.a.x, arg_0.a.x, global0.x)), countOneBits(vec4<u32>(global0.x, global0.x, arg_0.a.x, arg_0.a.x))) | (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.c, 4294967295u, 1u, 102868u), vec4<u32>(arg_0.c, 4294967295u, arg_0.a.x, arg_0.a.x)) & ~max(vec4<u32>(23241u, 39963u, 1u, 0u), vec4<u32>(u_input.c, 27938u, 1u, u_input.c))), ~firstTrailingBit(select(~vec4<u32>(46627u, arg_0.c, 979u, 11276u), vec4<u32>(arg_0.a.x, 42292u, 0u, global0.x), true)), true);
    global0 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(max(~vec4<u32>(3234u, 0u, arg_0.a.x, u_input.a.x), vec4<u32>(1u, arg_0.c, 0u, arg_0.c)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 9719u, 55420u, 4294967295u), vec4<u32>(25422u, 101948u, u_input.a.x, 28398u))) ^ vec4<u32>(~u_input.c, _wgslsmith_div_u32(global0.x << (32115u % 32u), _wgslsmith_dot_vec2_u32(arg_0.a, global0.ww)), _wgslsmith_add_u32(~50724u, global0.x), 4294967295u), max(~vec4<u32>(~0u, _wgslsmith_mult_u32(arg_0.c, global0.x), 66326u, arg_0.c), vec4<u32>(min(4294967295u, u_input.c), 4294967295u, countOneBits(u_input.c) | ~arg_0.a.x, select(67955u, ~arg_0.c, all(vec2<bool>(true, false))))));
    let var_0 = Struct_1(arg_1.a | arg_0.d.a);
    return u_input.a.yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -1000f, 2788f)))))));
    var var_1 = Struct_2(func_4(func_1(u_input.b.x), func_1(u_input.b.x).d, -u_input.d & u_input.d) << ((u_input.a.yz >> ((_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 14757u), global0.ww) >> (min(vec2<u32>(54294u, global0.x), global0.wx) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)), 1285f, 73505u, Struct_1(max(u_input.b, vec2<i32>(0i, u_input.b.x)) & -func_1(2147483647i).d.a));
    global0 = abs((~vec4<u32>(u_input.c, u_input.a.x, var_1.c, 0u) >> (reverseBits(vec4<u32>(4294967295u, 4294967295u, var_1.a.x, u_input.a.x)) % vec4<u32>(32u))) << (vec4<u32>(select(2970u, var_1.c, false), 45258u ^ u_input.c, 33895u, ~var_1.c) % vec4<u32>(32u))) ^ firstLeadingBit(vec4<u32>(3107u, 4294967295u, global0.x, reverseBits(u_input.a.x)));
    global0 = firstLeadingBit(select(min(firstLeadingBit(vec4<u32>(1u, u_input.c, 1u, 4294967295u)) ^ vec4<u32>(4294967295u, global0.x, 2225u, 1u), vec4<u32>(~1u, ~var_1.a.x, 4294967295u, firstLeadingBit(global0.x))), select(vec4<u32>(~41834u, 0u, ~var_1.c, 0u), select(firstTrailingBit(vec4<u32>(4294967295u, var_1.c, u_input.a.x, 0u)), ~vec4<u32>(46520u, 4294967295u, 0u, u_input.c), all(vec2<bool>(true, false))), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true))), true));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(~func_4(Struct_2(global0.xw, global2.x, global0.x, Struct_1(vec2<i32>(u_input.b.x, u_input.b.x))), Struct_1(vec2<i32>(1i, var_1.d.a.x)), u_input.d).x, 13u)] + global1[_wgslsmith_index_u32(21846u | global0.x, 13u)]));
    let var_2 = vec2<f32>(var_1.b, _wgslsmith_f_op_f32(round(var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(335f, -262f, var_2.x, var_0.x)))))), func_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.d.a.x, 2147483647i, var_1.d.a.x, 11401i), vec4<i32>(var_1.d.a.x, var_1.d.a.x, -2147483647i, var_1.d.a.x)), vec4<i32>(u_input.b.x, -1112i, -29654i, -1i) >> (vec4<u32>(var_1.c, 62854u, 13499u, global0.x) % vec4<u32>(32u))) >> (~(~13275u) % 32u)).d.a.x, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~19614u, min(var_1.a.x, 66822u), ~var_1.a.x, ~var_1.c), ~(~vec4<u32>(var_1.a.x, global0.x, global0.x, u_input.c)), ~vec4<u32>(30378u, 0u, 0u, global0.x) >> (~vec4<u32>(global0.x, u_input.c, var_1.a.x, global0.x) % vec4<u32>(32u))));
}

