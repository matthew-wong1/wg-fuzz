struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec4<i32>(2147483647i, -20557i, -29234i, 13103i), vec2<u32>(4294967295u, 10245u), -51508i);

var<private> global1: Struct_1;

var<private> global2: array<u32, 6> = array<u32, 6>(40282u, 85821u, 1u, 21879u, 79773u, 20054u);

var<private> global3: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(0i, 27228i), vec2<i32>(i32(-2147483648), 40279i), vec2<i32>(-11423i, 18424i), vec2<i32>(1i, 8435i), vec2<i32>(i32(-2147483648), 1967i), vec2<i32>(i32(-2147483648), 1682i), vec2<i32>(1i, 1i), vec2<i32>(-30502i, 15607i), vec2<i32>(0i, -59079i), vec2<i32>(48883i, 0i), vec2<i32>(-2394i, i32(-2147483648)), vec2<i32>(2147483647i, -20182i), vec2<i32>(i32(-2147483648), 19187i), vec2<i32>(0i, -23293i), vec2<i32>(-1i, 4145i), vec2<i32>(7844i, 17704i), vec2<i32>(10764i, -1i), vec2<i32>(-29059i, -29609i), vec2<i32>(13335i, 57597i), vec2<i32>(52923i, 66104i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(35202i, -23227i), vec2<i32>(23028i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_clamp_vec4_i32(select(vec4<i32>(arg_0.d, _wgslsmith_add_i32(global1.d, countOneBits(arg_0.d)), global1.d, ~(-1i)), _wgslsmith_mult_vec4_i32(select(-vec4<i32>(23490i, global0.b.x, 53808i, arg_0.b.x), global1.b, select(vec4<bool>(true, true, false, false), vec4<bool>(global1.a, false, false, false), global1.a)), _wgslsmith_mult_vec4_i32(-global0.b, max(arg_0.b, global0.b))), !global0.a), _wgslsmith_mod_vec4_i32(global1.b, -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(5381i, global0.d), vec2<i32>(0i, 1i)), 1i, _wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(global0.d, 29503i, global0.d, global1.d)), -1i)), global1.b);
    var var_1 = Struct_1(false, -(~(~(arg_0.b << (vec4<u32>(0u, 0u, u_input.a.x, 58843u) % vec4<u32>(32u))))), vec2<u32>(48069u, ~(arg_0.c.x & ~arg_0.c.x)), reverseBits(17091i));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1104f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1882f, 160f)) - _wgslsmith_f_op_f32(arg_1 + arg_1))), _wgslsmith_f_op_f32(1232f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 1181f) * _wgslsmith_f_op_f32(arg_1 + arg_1)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(432f))) - arg_1), -355f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_1), arg_1));
    return true;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global0 = Struct_1(true, global1.b, vec2<u32>(~u_input.b.x ^ u_input.a.x, max(global2[_wgslsmith_index_u32(u_input.a.x | 1u, 6u)], 4294967295u)) ^ select(u_input.a, vec2<u32>(5684u, ~0u), func_3(Struct_1(global1.a, global1.b, vec2<u32>(u_input.a.x, global1.c.x), global1.b.x), -2045f)), -13186i);
    var var_0 = Struct_1(~(59318u << (~global2[_wgslsmith_index_u32(0u, 6u)] % 32u)) < 1u, max(vec4<i32>(1i, 1i & global0.d, 25924i, arg_0.x) ^ vec4<i32>(2147483647i, global0.d, firstLeadingBit(global0.b.x), ~0i), vec4<i32>(-1i, abs(_wgslsmith_add_i32(arg_0.x, -29297i)), reverseBits(i32(-1i) * -14279i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(24258i, -46650i, global0.b.x), arg_0), abs(vec3<i32>(global1.d, 76004i, 1i))))), vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(481u, 6u)], global0.c.x), global1.c.x), 44410u), abs(~_wgslsmith_mult_i32(2147483647i, global1.b.x) >> (((global1.c.x & 4294967295u) | global0.c.x) % 32u)));
    global2 = array<u32, 6>();
    let var_1 = 1000f;
    let var_2 = Struct_1(true, var_0.b, var_0.c, _wgslsmith_dot_vec2_i32(arg_0.xz, _wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, 39665i), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, global0.d), _wgslsmith_add_vec2_i32(vec2<i32>(0i, global1.b.x), arg_0.xz)))));
    return Struct_1(false, vec4<i32>(-30208i, global0.b.x, _wgslsmith_add_i32(-18879i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -1i, global0.d), vec3<i32>(global1.d, -1697i, 2147483647i) << (u_input.b.zzz % vec3<u32>(32u)))), _wgslsmith_mult_i32(abs(abs(9486i)), reverseBits(2147483647i))), var_2.c, -var_0.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-124f, -739f))))))));
    global2 = array<u32, 6>();
    global0 = arg_0;
    let var_1 = arg_0;
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x))));
    return !global0.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    var var_0 = !vec3<bool>(global0.a, func_4(func_2(arg_3.b.zyz), func_2(global1.b.xzz)), true);
    global2 = array<u32, 6>();
    var_0 = !select(vec3<bool>(func_4(arg_3, Struct_1(global1.a, vec4<i32>(global1.b.x, arg_3.d, global1.b.x, arg_3.b.x), vec2<u32>(27540u, u_input.b.x), 31792i)), func_4(arg_3, Struct_1(true, arg_3.b, arg_3.c, -35557i)), !var_0.x), vec3<bool>(_wgslsmith_clamp_i32(-13866i, arg_3.d, global1.b.x) == _wgslsmith_div_i32(arg_3.b.x, global1.b.x), true, arg_3.c.x == global2[_wgslsmith_index_u32(reverseBits(u_input.b.x), 6u)]), true);
    let var_1 = select(!(!select(select(vec4<bool>(arg_3.a, false, global1.a, false), vec4<bool>(true, true, global1.a, true), false), vec4<bool>(global0.a, var_0.x, false, global1.a), !vec4<bool>(arg_3.a, true, var_0.x, true))), !vec4<bool>(global1.a || true, all(select(vec3<bool>(false, true, global1.a), vec3<bool>(true, false, global1.a), vec3<bool>(global1.a, true, false))), (arg_3.a != false) && !global1.a, any(select(var_0.zz, var_0.yx, vec2<bool>(arg_3.a, true)))), global0.a);
    let var_2 = Struct_1(true, reverseBits(vec4<i32>(arg_3.d, 1i, ~0i, global0.d)) >> (reverseBits(vec4<u32>(global0.c.x, ~1u, global0.c.x >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 6u)], 6u)] % 32u), ~arg_2.x)) % vec4<u32>(32u)), global0.c, arg_3.b.x);
    return _wgslsmith_add_i32(arg_3.b.x, _wgslsmith_mod_i32(-global1.b.x, _wgslsmith_mod_i32(func_2(vec3<i32>(-2147483647i, 2147483647i, global1.d)).b.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.d, 0i, global0.b.x, var_2.b.x), arg_3.b), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 26>();
    let var_0 = vec2<i32>(i32(-1i) * -2147483647i, ~func_1(u_input.a, vec4<f32>(-1844f, -280f, -779f, -1336f), vec3<u32>(19395u, global1.c.x, 31065u), Struct_1(true, vec4<i32>(global0.d, -9534i, global0.d, -8935i), vec2<u32>(global0.c.x, global1.c.x), global0.d)) >> ((_wgslsmith_div_u32(79635u, 4294967295u) ^ global0.c.x) % 32u)) & -(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.b.x, global0.d), global3[_wgslsmith_index_u32(1u, 26u)])) << (vec2<u32>(global1.c.x & u_input.a.x, 116420u) % vec2<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_sub_i32(~(0i << (global0.c.x % 32u)), _wgslsmith_sub_i32(~global0.b.x, 72680i)) >= -1i, vec4<i32>(-1i) * -vec4<i32>(global1.b.x, global0.b.x | global1.d, -global0.d, global1.b.x | global1.b.x), ~vec2<u32>(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], 1u, 4294967295u), 1u) << ((max(~vec2<u32>(global1.c.x, 4294967295u), vec2<u32>(global2[_wgslsmith_index_u32(1u, 6u)], global1.c.x)) | vec2<u32>(u_input.b.x ^ 22442u, ~4294967295u)) % vec2<u32>(32u)), func_1(vec2<u32>(u_input.a.x, global0.c.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-230f, 1195f, -467f, 358f))), vec4<f32>(1045f, 488f, 997f, 836f))))), ~(~u_input.b.xxy) & firstLeadingBit(~u_input.b.wxw), func_2(global1.b.yzz)));
    var var_2 = !select(select(!select(vec2<bool>(false, true), vec2<bool>(true, global0.a), true), vec2<bool>(false, false), select(false || var_1.a, true, true)), select(!(!vec2<bool>(false, global1.a)), select(vec2<bool>(global0.a, global1.a), vec2<bool>(true, false), !vec2<bool>(global0.a, true)), vec2<bool>(func_2(global0.b.yxx).a, false)), var_1.d <= -global0.d);
    var var_3 = _wgslsmith_mod_vec4_i32(global1.b, (reverseBits(vec4<i32>(var_1.d, -12458i, 41737i, var_0.x)) << (min(u_input.b, u_input.b) % vec4<u32>(32u))) >> (~countOneBits(vec4<u32>(global2[_wgslsmith_index_u32(global0.c.x, 6u)], 1u, global2[_wgslsmith_index_u32(0u, 6u)], u_input.a.x)) % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~global1.b.x, reverseBits(-_wgslsmith_mult_vec4_i32(var_1.b, var_1.b) << (max(u_input.b, ~u_input.b) % vec4<u32>(32u))), ~(~global0.b));
}

