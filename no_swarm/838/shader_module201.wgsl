struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: Struct_3;

var<private> global2: array<u32, 6> = array<u32, 6>(7613u, 0u, 4294967295u, 53816u, 0u, 0u);

var<private> global3: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<i32>(-14917i, 1i, 47978i, -1i), vec2<bool>(false, true), Struct_1(false, 20771i)), Struct_2(vec4<i32>(30306i, 2147483647i, 0i, -1i), vec2<bool>(false, true), Struct_1(true, 48022i)), Struct_2(vec4<i32>(-27987i, -33104i, 1i, 1i), vec2<bool>(false, true), Struct_1(false, -2749i)), Struct_2(vec4<i32>(2147483647i, 0i, -1i, 11439i), vec2<bool>(true, false), Struct_1(false, 0i)), Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), -35784i, 91921i), vec2<bool>(true, false), Struct_1(true, -1i)), Struct_2(vec4<i32>(-29269i, -18392i, 13431i, -27903i), vec2<bool>(false, true), Struct_1(true, i32(-2147483648))), Struct_2(vec4<i32>(-43610i, 1i, -2115i, -47339i), vec2<bool>(false, true), Struct_1(false, 21407i)), Struct_2(vec4<i32>(-2950i, -2741i, -1474i, -54474i), vec2<bool>(false, false), Struct_1(false, -1i)), Struct_2(vec4<i32>(-1i, -40768i, 1i, 58228i), vec2<bool>(true, false), Struct_1(true, 49473i)), Struct_2(vec4<i32>(2147483647i, 1i, 15870i, -34273i), vec2<bool>(true, false), Struct_1(true, -18797i)), Struct_2(vec4<i32>(1i, 1i, -1i, -4352i), vec2<bool>(false, false), Struct_1(true, 6054i)), Struct_2(vec4<i32>(-1i, 2147483647i, 1i, 6912i), vec2<bool>(false, true), Struct_1(true, 0i)), Struct_2(vec4<i32>(-1i, 457i, 1i, -3454i), vec2<bool>(false, true), Struct_1(false, i32(-2147483648))), Struct_2(vec4<i32>(15610i, 51529i, 0i, 3175i), vec2<bool>(false, false), Struct_1(true, 0i)), Struct_2(vec4<i32>(20703i, 1i, 2147483647i, -29067i), vec2<bool>(false, false), Struct_1(false, 0i)), Struct_2(vec4<i32>(23026i, 42892i, 2147483647i, 28519i), vec2<bool>(false, false), Struct_1(true, 2147483647i)), Struct_2(vec4<i32>(-1i, 0i, -81987i, 2147483647i), vec2<bool>(true, true), Struct_1(true, -3101i)), Struct_2(vec4<i32>(-42171i, 0i, 44362i, -1i), vec2<bool>(true, true), Struct_1(true, 32799i)), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 0i, 59886i), vec2<bool>(false, true), Struct_1(true, i32(-2147483648))), Struct_2(vec4<i32>(0i, 2147483647i, 12264i, i32(-2147483648)), vec2<bool>(false, true), Struct_1(false, 25632i)), Struct_2(vec4<i32>(-52085i, 0i, -1i, 1i), vec2<bool>(true, true), Struct_1(false, 16920i)), Struct_2(vec4<i32>(-49712i, -23540i, -10565i, -24723i), vec2<bool>(true, true), Struct_1(false, -42712i)), Struct_2(vec4<i32>(0i, 24623i, 2147483647i, 0i), vec2<bool>(false, false), Struct_1(true, -1425i)), Struct_2(vec4<i32>(2147483647i, 7563i, -6970i, -23097i), vec2<bool>(true, false), Struct_1(true, -1i)), Struct_2(vec4<i32>(-1i, 0i, 1i, -4314i), vec2<bool>(false, false), Struct_1(true, i32(-2147483648))), Struct_2(vec4<i32>(46559i, -13379i, 2147483647i, 2147483647i), vec2<bool>(false, false), Struct_1(true, i32(-2147483648))));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: vec4<u32>) -> vec3<i32> {
    var var_0 = _wgslsmith_add_vec4_i32(global1.a.a, global1.a.a);
    var var_1 = Struct_3(global3[_wgslsmith_index_u32(0u, 26u)], global1.a.c);
    let var_2 = Struct_2(vec4<i32>(_wgslsmith_div_i32(~var_1.a.a.x, u_input.a ^ -56666i), _wgslsmith_sub_i32(-1i, -1i | arg_1) & var_1.b.b, 0i, 44238i), global1.a.b, global1.b);
    var var_3 = select(~(i32(-1i) * -41410i), 0i, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(arg_3.x, global2[_wgslsmith_index_u32(3982u, 6u)], 89842u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_3.x, 6u)] << (global2[_wgslsmith_index_u32(arg_3.x, 6u)] % 32u), 6u)]), 11u)]) != _wgslsmith_f_op_f32(-228f * global0[_wgslsmith_index_u32(49154u, 11u)]));
    let var_4 = global1.a;
    return _wgslsmith_sub_vec3_i32(reverseBits(~vec3<i32>(arg_2, arg_1, 2147483647i) | -vec3<i32>(arg_2, var_1.a.c.b, 1i)), abs(var_1.a.a.xwx));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = global1.b;
    var var_1 = Struct_3(global1.a, global1.a.c);
    global3 = array<Struct_2, 26>();
    var var_2 = -func_3(global2[_wgslsmith_index_u32(4294967295u, 6u)], countOneBits(firstLeadingBit(arg_0.c.b)), var_1.a.a.x, max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13507u, 6u)], 6u)], 30895u), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)], 1u, 0u)), 4294967295u, ~global2[_wgslsmith_index_u32(47776u, 6u)], max(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14237u, 6u)], 6u)])), ~(vec4<u32>(2196u, 30177u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20673u, 6u)], 6u)], global2[_wgslsmith_index_u32(5874u, 6u)]) >> (vec4<u32>(90201u, 0u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]) % vec4<u32>(32u)))));
    var_1 = Struct_3(var_1.a, var_1.b);
    return Struct_3(var_1.a, Struct_1(any(!(!vec4<bool>(arg_0.b.x, false, false, false))), ~u_input.a));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: bool) -> vec2<bool> {
    var var_0 = func_2(global1.a);
    var var_1 = arg_1.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(42686u, 6u)], 6u)], 6u)], global2[_wgslsmith_index_u32(0u, 6u)]), 11u)])) - arg_2.x) + 247f);
    var var_3 = ~abs(abs(abs(vec4<u32>(0u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52258u, 6u)], 6u)], 6u)], 78167u))));
    var var_4 = select(~countOneBits(~var_3.zxz), vec3<u32>(var_3.x, ~firstTrailingBit(global2[_wgslsmith_index_u32(var_3.x, 6u)]), global2[_wgslsmith_index_u32(3134u, 6u)]) | ~var_3.xyz, !vec3<bool>(all(vec2<bool>(var_0.a.b.x, var_0.b.a)) & !var_0.a.b.x, true, false));
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 48119u;
    let var_1 = global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(0u, 6u)] << (_wgslsmith_add_u32(~(~global2[_wgslsmith_index_u32(53560u, 6u)]), 1u) % 32u), 26u)];
    global2 = array<u32, 6>();
    var var_2 = func_1(global1.a, global1.a.a.xw, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1371f)) - 1241f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~27602u, 11u)] + _wgslsmith_f_op_f32(-524f + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(23555u, global2[_wgslsmith_index_u32(16819u, 6u)]), vec2<u32>(0u, 4294967295u)), 11u)])), -1000f), !var_1.c.a);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-743f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)], 6u)], 11u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(110724u, 6u)], 6u)], 6u)], 11u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1038f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 6u)], 6u)], 11u)], global0[_wgslsmith_index_u32(20445u, 11u)]) + vec3<f32>(-632f, 228f, -949f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(407f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 11u)], -539f), vec3<f32>(-965f, global0[_wgslsmith_index_u32(39361u, 11u)], 238f), vec3<bool>(global1.b.a, true, global1.b.a)))))));
    var var_4 = _wgslsmith_mod_vec3_u32(vec3<u32>(19167u, firstLeadingBit(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48802u, 6u)], 6u)]), ~global2[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)], 6u)], 6u)], 6u)], 6u)], 6u)]), 6u)]), _wgslsmith_mult_vec3_u32(~vec3<u32>(5330u, global2[_wgslsmith_index_u32(170u, 6u)], 1u) | _wgslsmith_add_vec3_u32(vec3<u32>(41514u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)], 6u)], 6u)]), vec3<u32>(83449u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17233u, 6u)], 6u)], 6u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31439u, 6u)], 6u)], 6u)])), reverseBits(vec3<u32>(8116u, global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)], 6u)], 6u)], 6u)], 6u)], 6u)])))) << (vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1442u, 6u)], 6u)]), abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)])), 0u, firstTrailingBit(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(16703u, global2[_wgslsmith_index_u32(12580u, 6u)]), 6u)])) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]);
}

