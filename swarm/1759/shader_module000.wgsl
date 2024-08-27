struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_2(vec2<u32>(1u, 16392u)), Struct_2(vec2<u32>(48826u, 32063u)), vec2<i32>(-1i, -1i)), Struct_3(Struct_2(vec2<u32>(27686u, 1u)), Struct_2(vec2<u32>(4294967295u, 12211u)), vec2<i32>(2147483647i, 2147483647i)), Struct_3(Struct_2(vec2<u32>(31468u, 4294967295u)), Struct_2(vec2<u32>(4294967295u, 39139u)), vec2<i32>(1i, 0i)), Struct_3(Struct_2(vec2<u32>(1u, 51868u)), Struct_2(vec2<u32>(19596u, 0u)), vec2<i32>(2147483647i, i32(-2147483648))), Struct_3(Struct_2(vec2<u32>(39861u, 5540u)), Struct_2(vec2<u32>(71562u, 8222u)), vec2<i32>(-15682i, 34168i)), Struct_3(Struct_2(vec2<u32>(35712u, 15374u)), Struct_2(vec2<u32>(91222u, 4294967295u)), vec2<i32>(2147483647i, -10020i)), Struct_3(Struct_2(vec2<u32>(0u, 0u)), Struct_2(vec2<u32>(49360u, 1u)), vec2<i32>(i32(-2147483648), -22624i)), Struct_3(Struct_2(vec2<u32>(12930u, 4294967295u)), Struct_2(vec2<u32>(0u, 69830u)), vec2<i32>(1i, -87085i)), Struct_3(Struct_2(vec2<u32>(71033u, 80126u)), Struct_2(vec2<u32>(48375u, 13436u)), vec2<i32>(-27152i, 2147483647i)), Struct_3(Struct_2(vec2<u32>(43989u, 26813u)), Struct_2(vec2<u32>(34206u, 0u)), vec2<i32>(-1i, -5810i)), Struct_3(Struct_2(vec2<u32>(0u, 6407u)), Struct_2(vec2<u32>(4294967295u, 34555u)), vec2<i32>(11597i, 23237i)), Struct_3(Struct_2(vec2<u32>(102476u, 108340u)), Struct_2(vec2<u32>(43951u, 1u)), vec2<i32>(-1i, i32(-2147483648))), Struct_3(Struct_2(vec2<u32>(1u, 9950u)), Struct_2(vec2<u32>(1u, 0u)), vec2<i32>(-1i, i32(-2147483648))), Struct_3(Struct_2(vec2<u32>(0u, 0u)), Struct_2(vec2<u32>(1u, 1u)), vec2<i32>(48315i, -61924i)), Struct_3(Struct_2(vec2<u32>(0u, 25170u)), Struct_2(vec2<u32>(6677u, 36413u)), vec2<i32>(-30266i, 26111i)), Struct_3(Struct_2(vec2<u32>(4294967295u, 1947u)), Struct_2(vec2<u32>(4294967295u, 22789u)), vec2<i32>(60619i, -53727i)), Struct_3(Struct_2(vec2<u32>(30153u, 64448u)), Struct_2(vec2<u32>(0u, 18488u)), vec2<i32>(-30037i, 0i)), Struct_3(Struct_2(vec2<u32>(19835u, 0u)), Struct_2(vec2<u32>(1u, 23374u)), vec2<i32>(16139i, -6715i)), Struct_3(Struct_2(vec2<u32>(0u, 11222u)), Struct_2(vec2<u32>(72965u, 82848u)), vec2<i32>(2147483647i, i32(-2147483648))), Struct_3(Struct_2(vec2<u32>(0u, 7068u)), Struct_2(vec2<u32>(0u, 4294967295u)), vec2<i32>(-1i, 1i)), Struct_3(Struct_2(vec2<u32>(0u, 32131u)), Struct_2(vec2<u32>(1747u, 4294967295u)), vec2<i32>(18778i, -1i)), Struct_3(Struct_2(vec2<u32>(4294967295u, 12773u)), Struct_2(vec2<u32>(5046u, 13356u)), vec2<i32>(i32(-2147483648), -43698i)), Struct_3(Struct_2(vec2<u32>(2490u, 49088u)), Struct_2(vec2<u32>(0u, 44635u)), vec2<i32>(27801i, 1604i)), Struct_3(Struct_2(vec2<u32>(26474u, 1u)), Struct_2(vec2<u32>(27798u, 0u)), vec2<i32>(-48153i, -41168i)), Struct_3(Struct_2(vec2<u32>(0u, 104258u)), Struct_2(vec2<u32>(1u, 84583u)), vec2<i32>(i32(-2147483648), -38430i)), Struct_3(Struct_2(vec2<u32>(1u, 1u)), Struct_2(vec2<u32>(1u, 11123u)), vec2<i32>(-4999i, i32(-2147483648))), Struct_3(Struct_2(vec2<u32>(0u, 4294967295u)), Struct_2(vec2<u32>(0u, 0u)), vec2<i32>(38759i, 2147483647i)));

var<private> global3: Struct_3 = Struct_3(Struct_2(vec2<u32>(68094u, 1u)), Struct_2(vec2<u32>(96367u, 1u)), vec2<i32>(68398i, i32(-2147483648)));

var<private> global4: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_add_vec3_i32(u_input.e.yzx, reverseBits(firstLeadingBit(-(~vec3<i32>(global3.c.x, -2147483647i, arg_0.x)))));
    var var_1 = Struct_1(arg_2.a);
    var_1 = Struct_1(vec2<bool>(select(true, any(!vec4<bool>(true, arg_2.a.x, var_1.a.x, true)), any(vec4<bool>(var_1.a.x, true, arg_2.a.x, false))), select(arg_2.a.x, true, !all(vec4<bool>(arg_2.a.x, false, true, arg_2.a.x)))));
    let var_2 = global2[_wgslsmith_index_u32(global1.x, 27u)];
    var var_3 = Struct_1(vec2<bool>(select(true, arg_2.a.x, var_1.a.x) || (abs(u_input.d.x) > ~4294967295u), arg_2.a.x));
    return !(!arg_2.a);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: f32) -> f32 {
    global3 = global2[_wgslsmith_index_u32(u_input.c.x, 27u)];
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1281f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3.b.a.x, 14u)] * 1186f), _wgslsmith_f_op_f32(993f - global0[_wgslsmith_index_u32(arg_2.x, 14u)]))))));
    let var_1 = vec4<i32>(firstTrailingBit(_wgslsmith_add_i32(-(global3.c.x & 0i), ~(~global3.c.x))), -1i, -25490i & (-u_input.a & select(1i, firstLeadingBit(u_input.a), true)), -52245i);
    let var_2 = Struct_3(Struct_2(global1.yz), global3.a, _wgslsmith_mult_vec2_i32(global3.c, select(_wgslsmith_clamp_vec2_i32(-var_1.wx, var_1.wz, select(global3.c, global3.c, false)), select(u_input.e.xx, arg_1.xx >> (global1.zx % vec2<u32>(32u)), select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), arg_0)), select(vec2<bool>(false, arg_0), func_3(vec2<i32>(1i, 0i), global2[_wgslsmith_index_u32(global3.b.a.x, 27u)], Struct_1(vec2<bool>(arg_0, true))), all(vec3<bool>(arg_0, arg_0, arg_0))))));
    var var_3 = ~firstTrailingBit(~6446u);
    return global0[_wgslsmith_index_u32(var_2.a.a.x, 14u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(min(_wgslsmith_div_u32(global1.x, 1703u), global1.x), 14u)], 596f))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(22958u, 1u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(global3.a.a.x, 105159u, 0u, 0u)), _wgslsmith_mult_u32(~u_input.d.x, u_input.c.x))), 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 104f)), _wgslsmith_f_op_f32(abs(-240f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(32500u), 14u)]) * _wgslsmith_f_op_f32(func_2(arg_1 != true, select(u_input.e.wyz, u_input.e.xxy, false), vec4<u32>(4294967295u, u_input.d.x, 71440u, 0u), 213f))), var_0.x, _wgslsmith_f_op_f32(round(var_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(arg_0.x, 14u)]))), _wgslsmith_f_op_f32(abs(-581f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false, u_input.e.ywy, vec4<u32>(63896u, 1u, 0u, global3.b.a.x), var_0.x))))));
    global1 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, global3.b.a.x), ~min(52186u & global1.x, _wgslsmith_mult_u32(1u, 80639u)), ~(~(~global3.b.a.x))), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 1u, 23140u, global3.a.a.x), _wgslsmith_sub_vec4_u32(u_input.d, u_input.d)), global1.x, _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_sub_u32(~12535u, 1u))));
    let var_2 = i32(-1i) * -_wgslsmith_clamp_i32(-74405i, i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(max(u_input.e.yy, vec2<i32>(-28100i, 30676i)), _wgslsmith_add_vec2_i32(global3.c, vec2<i32>(-25458i, 43425i))));
    var var_3 = -(firstTrailingBit(min(max(vec3<i32>(-1i, u_input.e.x, global3.c.x), vec3<i32>(global3.c.x, -1i, -46556i)), vec3<i32>(-1i, global3.c.x, var_2))) ^ (abs(select(vec3<i32>(u_input.a, -56605i, var_2), u_input.e.yzy, arg_1)) << (abs(vec3<u32>(global3.a.a.x, 1538u, u_input.d.x)) % vec3<u32>(32u))));
    return Struct_1(!func_3(global3.c & vec2<i32>(var_2, u_input.e.x), Struct_3(Struct_2(u_input.d.xy), Struct_2(u_input.c), vec2<i32>(u_input.a, 665i)), Struct_1(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.d.xyw, !select(select(true, false, false) || true, !any(vec2<bool>(false, true)), true));
    let var_1 = global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(u_input.d.x, global1.x)), global1.yx), _wgslsmith_add_vec2_u32(global3.b.a, _wgslsmith_add_vec2_u32(vec2<u32>(1u, global1.x), vec2<u32>(15458u, global1.x)))) ^ ~(_wgslsmith_sub_u32(global3.b.a.x, 4294967295u) >> (reverseBits(u_input.c.x) % 32u))), 27u)];
    global2 = array<Struct_3, 27>();
    var var_2 = -(~global3.c.x);
    var var_3 = min(1u, _wgslsmith_mod_u32(1u, var_1.b.a.x));
    let var_4 = Struct_2(~vec2<u32>(u_input.d.x, select(31157u, u_input.d.x, any(vec3<bool>(true, false, var_0.a.x)))));
    var var_5 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(0u, u_input.e.x);
}

