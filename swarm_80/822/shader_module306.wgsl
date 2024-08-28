struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21>;

var<private> global1: array<vec3<f32>, 16>;

var<private> global2: array<i32, 1> = array<i32, 1>(1i);

var<private> global3: array<Struct_3, 20>;

var<private> global4: i32 = 0i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.a.x << (_wgslsmith_div_u32(u_input.a.x, 1u) % 32u), 16u)]))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec2<i32>) -> i32 {
    var var_0 = 609f;
    var var_1 = arg_1.a.d.b.x;
    var var_2 = select((max(global2[_wgslsmith_index_u32(arg_1.a.b.x, 1u)], arg_2.x) & ~(-2147483647i)) << (arg_1.a.c % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, arg_1.a.d.a, -2147483647i, arg_1.a.a.a)), min(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], 2150i, -1i, 2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(7036u, 1u)], -78761i, 17073i, arg_1.a.d.a))), -u_input.c.x), !all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true))) < ~u_input.c.x;
    let var_3 = arg_1;
    var var_4 = countOneBits(_wgslsmith_div_u32(max(~4294967295u, ~1u), var_3.a.c)) | countOneBits((1u ^ (arg_1.a.c >> (64857u % 32u))) & var_3.a.c);
    return 30199i;
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -671f), -397f, _wgslsmith_f_op_f32(floor(-604f)), _wgslsmith_f_op_f32(abs(-765f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-511f, 1221f, -1000f, -431f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(437f, 1000f, 296f, 1464f) - vec4<f32>(-1178f, -1043f, -2055f, 883f))))))));
    let var_1 = vec2<i32>(1i, reverseBits(firstLeadingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 55762i, 2147483647i, -47969i)))));
    var var_2 = vec2<i32>(~func_3(vec3<f32>(-413f, _wgslsmith_f_op_f32(min(485f, var_0.x)), 533f), Struct_4(Struct_2(Struct_1(-2147483647i, vec3<f32>(-269f, -630f, var_0.x)), u_input.a.xy, u_input.b, Struct_1(u_input.c.x, vec3<f32>(var_0.x, 3340f, -963f)))), -u_input.c), _wgslsmith_clamp_i32(21113i, ~(var_1.x ^ u_input.c.x), abs(-u_input.c.x)) ^ -76494i);
    var var_3 = var_0.ywz;
    let var_4 = Struct_1(-_wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 0i, u_input.c.x, global2[_wgslsmith_index_u32(arg_0, 1u)]), vec4<i32>(u_input.c.x, -8684i, 46129i, var_2.x)), _wgslsmith_sub_i32(1i, -2147483647i | var_2.x)), _wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(abs(98263u), 16u)], _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-998f, 1037f, var_3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_3.x, var_3.x)))))));
    return Struct_3(Struct_1(0i, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1094f, _wgslsmith_f_op_f32(max(var_0.x, var_3.x)), -632f)))), select(vec2<u32>(~5957u, 8261u), ~vec2<u32>(80788u, arg_0) >> (_wgslsmith_mult_vec2_u32(~u_input.a.yz, abs(vec2<u32>(0u, 4294967295u))) % vec2<u32>(32u)), vec2<bool>(true, true && any(vec4<bool>(false, false, false, false)))));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> u32 {
    var var_0 = arg_1;
    global2 = array<i32, 1>();
    var var_1 = Struct_3(arg_0.a, arg_0.b);
    var var_2 = !select(select(vec2<bool>(select(arg_1, arg_1, arg_1), -2147483647i == var_1.a.a), select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false)), !vec2<bool>(arg_1, arg_1), true), true), vec2<bool>(arg_1, !arg_1), any(!select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, true, false), vec4<bool>(arg_1, arg_1, true, true))));
    return abs(reverseBits(~var_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(vec3<i32>(~_wgslsmith_add_i32(0i, -1i), u_input.c.x, 33040i));
    var var_1 = Struct_1(var_0.x, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(u_input.b, 16u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(global1[_wgslsmith_index_u32(43274u, 16u)])), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(13226u, 22023u), 16u)])))));
    var var_2 = countOneBits(u_input.a.zy);
    var_0 = ~vec3<i32>(i32(-1i) * -9584i, global2[_wgslsmith_index_u32(func_4(func_2(~var_2.x), (0u >= var_2.x) | true), 1u)], var_0.x);
    global4 = var_0.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), vec4<f32>(var_1.b.x, -2668f, -542f, var_1.b.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-322f, -1004f, 1000f, -2262f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.b.x, -2006f, var_1.b.x, -748f), vec4<f32>(var_1.b.x, var_1.b.x, -723f, -1891f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-251f, 1242f, var_1.b.x, var_1.b.x) - vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, 1034f))))))));
    let var_4 = vec2<u32>(~countOneBits(~u_input.a.x | u_input.a.x), ~(_wgslsmith_add_u32(var_2.x, 4294967295u) << (1u % 32u)));
    var_0 = firstTrailingBit(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(~(vec3<i32>(var_1.a, var_0.x, var_0.x) ^ vec3<i32>(global2[_wgslsmith_index_u32(0u, 1u)], var_1.a, var_0.x)), -_wgslsmith_div_vec3_i32(vec3<i32>(8024i, var_1.a, u_input.c.x), vec3<i32>(u_input.c.x, 2147483647i, global2[_wgslsmith_index_u32(u_input.b, 1u)]))), vec3<i32>(-38637i, var_0.x, 35022i)));
    global1 = array<vec3<f32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(4294967295u, 1u)], u_input.c.x, ~var_1.a), vec3<u32>(_wgslsmith_mod_u32(~abs(var_2.x), ~0u), ~(~(~var_2.x)), u_input.a.x), u_input.a, reverseBits(-min(var_1.a, ~71994i)));
}

