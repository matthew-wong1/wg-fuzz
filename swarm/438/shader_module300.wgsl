struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<bool>(false, true), 1u, 1514i), Struct_1(vec2<bool>(true, false), 0u, -22447i), Struct_1(vec2<bool>(false, true), 41658u, 1i), Struct_1(vec2<bool>(false, true), 1u, 0i), Struct_1(vec2<bool>(true, false), 4294967295u, 17611i), Struct_1(vec2<bool>(false, false), 5550u, 2147483647i), Struct_1(vec2<bool>(false, false), 41237u, 9257i), Struct_1(vec2<bool>(true, true), 4294967295u, 43358i), Struct_1(vec2<bool>(false, false), 60165u, -23936i), Struct_1(vec2<bool>(true, false), 1u, 2147483647i), Struct_1(vec2<bool>(false, false), 1u, 1i), Struct_1(vec2<bool>(true, true), 1u, -58729i), Struct_1(vec2<bool>(true, false), 12974u, -9952i), Struct_1(vec2<bool>(false, false), 110561u, -1i), Struct_1(vec2<bool>(true, false), 30008u, -1i), Struct_1(vec2<bool>(false, false), 59296u, -10276i), Struct_1(vec2<bool>(true, false), 25873u, -18379i), Struct_1(vec2<bool>(true, false), 4294967295u, 4984i), Struct_1(vec2<bool>(false, true), 54721u, 1i), Struct_1(vec2<bool>(false, false), 1u, -1i), Struct_1(vec2<bool>(false, false), 3673u, 55789i), Struct_1(vec2<bool>(false, true), 1u, 51897i), Struct_1(vec2<bool>(false, false), 1u, 29817i), Struct_1(vec2<bool>(true, true), 39067u, 2147483647i), Struct_1(vec2<bool>(true, true), 4294967295u, -3384i), Struct_1(vec2<bool>(false, true), 0u, 1i), Struct_1(vec2<bool>(false, false), 1u, i32(-2147483648)), Struct_1(vec2<bool>(true, false), 66094u, 14686i));

var<private> global1: array<u32, 5>;

var<private> global2: vec2<i32>;

var<private> global3: vec2<i32> = vec2<i32>(-49196i, -9365i);

var<private> global4: array<vec2<f32>, 12>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global3 = min(vec2<i32>(arg_2.c, u_input.a), vec2<i32>(-1i, firstLeadingBit(_wgslsmith_add_i32(max(1i, 2147483647i), -global3.x))));
    var var_0 = Struct_1(select(arg_2.a, arg_1.a, select(arg_1.a, vec2<bool>(!arg_0, arg_2.a.x), select(!arg_2.a, !vec2<bool>(false, arg_0), arg_2.a.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(27833u << (arg_2.b % 32u)), countOneBits(arg_2.b), 4294967295u, 86804u >> (reverseBits(arg_2.b) % 32u)), ~(~vec4<u32>(u_input.b.x, 36042u, u_input.b.x, arg_2.b)) | ~(vec4<u32>(arg_1.b, 81720u, arg_1.b, 39692u) & vec4<u32>(u_input.b.x, 4294967295u, 50823u, 66407u))), abs((-19671i | _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c, 9199i), vec2<i32>(arg_1.c, arg_2.c))) & _wgslsmith_mod_i32(u_input.a, -u_input.a)));
    let var_1 = global4[_wgslsmith_index_u32(arg_2.b, 12u)];
    var var_2 = ~u_input.b.xy;
    let var_3 = Struct_1(!var_0.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 0u), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.xy, vec2<u32>(u_input.b.x, 0u)), _wgslsmith_add_vec2_u32(u_input.b.yy, u_input.b.zz))), 1i);
    return _wgslsmith_add_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(~0u, _wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(0u, 5u)])), firstTrailingBit(~1u)), abs(1u));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec4<i32>) -> bool {
    var var_0 = arg_2;
    var var_1 = 703f;
    var var_2 = global0[_wgslsmith_index_u32(func_3(false, global0[_wgslsmith_index_u32(arg_0.x, 28u)], Struct_1(select(vec2<bool>(true, arg_2.a.x), select(var_0.a, vec2<bool>(false, arg_2.a.x), false), vec2<bool>(var_0.a.x, arg_2.a.x)), firstLeadingBit(1u) | (u_input.b.x >> (2045u % 32u)), 2147483647i)) & ~(~abs(85855u)), 28u)];
    global1 = array<u32, 5>();
    let var_3 = global0[_wgslsmith_index_u32(select(u_input.b.x, 63925u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1157f + -100f), _wgslsmith_f_op_f32(trunc(-257f)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1308f) - -997f)), 28u)];
    return true;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(vec2<bool>(true, any(vec2<bool>(true, func_2(u_input.b.xx, vec4<i32>(-59647i, u_input.a, global3.x, u_input.a), global0[_wgslsmith_index_u32(23420u, 28u)], vec4<i32>(29494i, global3.x, 11512i, global3.x))))), 0u, -17316i);
    var var_1 = vec4<u32>((max(~4294967295u, 2264u) >> (~_wgslsmith_mult_u32(57024u, u_input.b.x) % 32u)) & ~global1[_wgslsmith_index_u32(1u, 5u)], ~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~var_0.b, 5u)], 5u)] << (_wgslsmith_mult_u32(~16475u, global1[_wgslsmith_index_u32(4294967295u, 5u)] & var_0.b) % 32u)), ~34262u, _wgslsmith_sub_u32(~select(_wgslsmith_mod_u32(var_0.b, 0u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~u_input.b.x, 5u)], 5u)], !var_0.a.x), _wgslsmith_add_u32(select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b, 5u)], 5u)], reverseBits(4294967295u), var_0.a.x), global1[_wgslsmith_index_u32(var_0.b, 5u)])));
    var_0 = Struct_1(select(vec2<bool>(all(vec2<bool>(var_0.a.x, false)), any(vec3<bool>(var_0.a.x, var_0.a.x, false)) && var_0.a.x), vec2<bool>(!any(vec3<bool>(var_0.a.x, var_0.a.x, true)), false), var_0.a), 19339u, _wgslsmith_mod_i32(global2.x >> (countOneBits(~u_input.b.x) % 32u), ~_wgslsmith_sub_i32(global2.x, var_0.c >> (4928u % 32u))));
    global3 = _wgslsmith_add_vec2_i32(select(-vec2<i32>(34603i, -1i), -vec2<i32>(u_input.a, var_0.c), var_0.a) << (vec2<u32>(_wgslsmith_sub_u32(49722u, var_1.x), ~4294967295u) % vec2<u32>(32u)), vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-10050i, -5604i))), firstLeadingBit(1i))) << (vec2<u32>(global1[_wgslsmith_index_u32(reverseBits(var_0.b), 5u)], var_0.b) % vec2<u32>(32u));
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, abs(select(firstTrailingBit(-20630i), 2147483647i & u_input.a, any(vec3<bool>(false, var_0.a.x, false)))), 11520i), ~(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, 1i, global2.x), countOneBits(vec3<i32>(10584i, u_input.a, 3513i))) & select(firstLeadingBit(vec3<i32>(23447i, u_input.a, var_0.c)), vec3<i32>(u_input.a, var_0.c, u_input.a), !vec3<bool>(false, var_0.a.x, false))));
    return _wgslsmith_f_op_f32(select(-762f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(218f + _wgslsmith_f_op_f32(abs(1361f))) + _wgslsmith_f_op_f32(trunc(1310f)))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(select(!all(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(trunc(1513f)) >= _wgslsmith_div_f32(-1199f, 237f), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)))), !any(vec2<bool>(true, false))), 74323u, global2.x);
    global1 = array<u32, 5>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1()))), 770f)) - global4[_wgslsmith_index_u32(abs(4294967295u), 12u)]);
    var var_2 = u_input.b.x;
    global4 = array<vec2<f32>, 12>();
    let var_3 = ~_wgslsmith_add_i32(global3.x, ~_wgslsmith_add_i32(-2147483647i, global2.x) << (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(-vec4<i32>(6767i, -28107i, -52288i, global2.x) | select(~vec4<i32>(0i, var_3, -2147483647i, 43220i), ~vec4<i32>(16526i, 2147483647i, var_0.c, -46845i), !vec4<bool>(var_0.a.x, var_0.a.x, false, true)), ~vec4<i32>(var_3, var_0.c, var_3 | -1i, ~(-30561i))), firstLeadingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.yx, u_input.b.yx), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b, 4294967295u), u_input.b.xz))) >> (~u_input.b.xz % vec2<u32>(32u)));
}

