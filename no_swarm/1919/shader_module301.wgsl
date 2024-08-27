struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(554f, 271f, -325f, -692f);

var<private> global1: f32 = -1370f;

var<private> global2: array<u32, 15> = array<u32, 15>(0u, 11045u, 36255u, 4294967295u, 0u, 1u, 4294967295u, 69603u, 4294967295u, 11909u, 0u, 1u, 1u, 35274u, 1u);

var<private> global3: vec3<i32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_2, arg_3: vec4<i32>) -> bool {
    var var_0 = arg_0.x;
    var var_1 = arg_2.b.x;
    global1 = 1000f;
    global2 = array<u32, 15>();
    global2 = array<u32, 15>();
    return all(!select(!(!vec4<bool>(false, arg_2.a.c.x, arg_2.a.c.x, arg_2.c)), vec4<bool>(arg_2.a.c.x & arg_2.c, !arg_2.c, true, arg_2.c), !select(vec4<bool>(arg_2.c, true, arg_2.c, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, arg_2.c, arg_2.c))));
}

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1097f, global0.x, global0.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 344f, -1770f, 1728f) + vec4<f32>(-480f, global0.x, -1853f, -222f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -730f)), vec4<f32>(112f, -770f, global0.x, 1370f))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-165f, global0.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(107f - -410f), 227f)), _wgslsmith_f_op_f32(-599f * global0.x))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)) + _wgslsmith_f_op_f32(-399f + 148f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1306f * -344f) - -154f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 1757f) * -971f)), _wgslsmith_f_op_f32(-1640f + global0.x));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1427f, global0.x), global0.x), global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x + -237f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, -420f))))));
    let var_0 = Struct_3(40603u, _wgslsmith_f_op_vec2_f32(global0.yw - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))));
    let var_1 = Struct_2(Struct_1(vec4<u32>(58693u, 1u, 23073u << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 1u), vec2<u32>(arg_0, 103542u)) % 32u), 4294967295u), true, vec2<bool>(true, func_1(~vec4<u32>(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(arg_0, 15u)], arg_0, 0u), 4294967295u ^ arg_0, Struct_2(Struct_1(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], arg_0, arg_0, 0u), false, vec2<bool>(arg_1, arg_1)), vec4<f32>(global0.x, -1144f, 466f, -267f), false), vec4<i32>(global3.x, global3.x, global3.x, global3.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, -991f, global0.x, var_0.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -1573f, -743f, 999f) * vec4<f32>(global0.x, global0.x, var_0.b.x, -1000f)), any(vec2<bool>(false, true))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, -1000f, -1613f) * vec4<f32>(-911f, 1054f, var_0.b.x, global0.x)), vec4<f32>(954f, global0.x, 1000f, global0.x), select(vec4<bool>(true, arg_1, true, true), vec4<bool>(true, arg_1, arg_1, true), arg_1))))), any(vec4<bool>(arg_1, true, any(select(vec4<bool>(arg_1, true, true, true), vec4<bool>(arg_1, true, arg_1, true), false)), !(arg_0 == global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20592u, 15u)], 15u)]))));
    return 1i;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> i32 {
    let var_0 = abs(~(~firstLeadingBit(~vec4<u32>(u_input.a, 1u, u_input.a, 66693u))));
    global2 = array<u32, 15>();
    global2 = array<u32, 15>();
    let var_1 = _wgslsmith_sub_i32(func_3(~u_input.a, !(_wgslsmith_dot_vec2_i32(vec2<i32>(-41031i, -38275i), vec2<i32>(global3.x, global3.x)) == global3.x)), -38277i);
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(reverseBits(firstTrailingBit(~vec3<i32>(38251i, global3.x, arg_1.x))), ~(~(~vec3<i32>(var_1, 1i, var_1)))), _wgslsmith_div_i32(1i, firstTrailingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 0i, -2147483647i), vec3<i32>(global3.x, 1i, arg_1.x)))));
    return -_wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(-vec3<i32>(-6723i, 1i, 0i), vec3<i32>(var_1, var_1, -23899i) << (var_0.zyy % vec3<u32>(32u))), global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_1(select(vec4<u32>(1u, 1u, global2[_wgslsmith_index_u32(u_input.a, 15u)], 0u), vec4<u32>(19395u, global2[_wgslsmith_index_u32(u_input.a, 15u)], 22391u, 118575u), vec4<bool>(false, false, false, false)), ~global2[_wgslsmith_index_u32(4294967295u, 15u)], Struct_2(Struct_1(vec4<u32>(5980u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 12916u), false, vec2<bool>(true, true)), vec4<f32>(-492f, -902f, global0.x, global0.x), false), ~vec4<i32>(0i, global3.x, global3.x, 36848i))) & true;
    let var_1 = -_wgslsmith_add_vec3_i32(vec3<i32>(1i, -_wgslsmith_div_i32(0i, global3.x), select(global3.x, _wgslsmith_dot_vec2_i32(global3.xz, global3.xx), all(vec3<bool>(false, true, true)))), vec3<i32>(global3.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(-17820i, global3.x), 8629i | global3.x), ~func_2(false, global3.zx)));
    var var_2 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(67626u, 15u)], 15u)], u_input.a), u_input.a, _wgslsmith_mod_u32(37607u, 33855u)), vec4<u32>(global2[_wgslsmith_index_u32(13825u, 15u)], _wgslsmith_sub_u32(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 15u)]), u_input.a & global2[_wgslsmith_index_u32(u_input.a, 15u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(57415u, 15u)], u_input.a, global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(20668u, 15u)]), vec4<u32>(70625u, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21004u, 15u)], 15u)], u_input.a)))), _wgslsmith_mult_vec4_u32(vec4<u32>(max(2153u, u_input.a), u_input.a, 1u, firstLeadingBit(global2[_wgslsmith_index_u32(1u, 15u)])), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) & vec4<u32>(46928u, u_input.a, 1u, u_input.a), ~vec4<u32>(u_input.a, 19851u, global2[_wgslsmith_index_u32(u_input.a, 15u)], u_input.a)))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 38216u) << (vec3<u32>(0u, 4294967295u, 1u) % vec3<u32>(32u)), vec3<u32>(u_input.a, u_input.a, 4294967295u) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))) < ~u_input.a, !vec2<bool>(true, !any(vec3<bool>(true, false, false))));
    let var_3 = select(!select(vec4<bool>(!var_2.b, true, var_2.c.x, var_2.c.x & var_2.c.x), select(vec4<bool>(true, false, false, false), vec4<bool>(var_2.c.x, var_2.c.x, false, var_2.c.x), !vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, true)), vec4<bool>(var_2.b, true, !var_2.b, !var_2.c.x)), select(select(select(select(vec4<bool>(var_2.b, true, true, false), vec4<bool>(var_2.b, var_2.c.x, var_2.c.x, true), var_2.b), select(vec4<bool>(var_2.b, var_2.b, var_2.b, true), vec4<bool>(false, true, false, false), var_2.b), !vec4<bool>(var_2.b, var_2.b, var_2.c.x, true)), vec4<bool>(false, any(var_2.c), all(vec2<bool>(false, false)), !var_2.c.x), vec4<bool>(true, !var_2.b, all(vec4<bool>(var_2.b, var_2.b, var_2.b, true)), true)), vec4<bool>(false != any(vec3<bool>(false, false, false)), any(vec4<bool>(false, true, var_2.b, var_2.c.x)), !(!var_2.c.x), false), !(!(!vec4<bool>(var_2.b, false, false, var_2.c.x)))), any(select(!vec4<bool>(true, var_2.b, false, false), select(!vec4<bool>(var_2.b, false, false, var_2.b), vec4<bool>(false, var_2.b, var_2.c.x, var_2.b), any(vec4<bool>(false, var_2.b, var_2.b, var_2.b))), select(!vec4<bool>(var_2.b, var_2.c.x, false, var_2.c.x), !vec4<bool>(false, var_2.b, var_2.c.x, var_2.b), select(vec4<bool>(true, true, var_2.b, var_2.c.x), vec4<bool>(var_2.c.x, true, var_2.c.x, var_2.c.x), vec4<bool>(var_2.c.x, var_2.c.x, var_2.b, var_2.b))))));
    var var_4 = firstTrailingBit(_wgslsmith_sub_u32((var_2.a.x | countOneBits(31103u)) | 18380u, var_2.a.x));
    let var_5 = Struct_3(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~max(u_input.a, 22559u), firstTrailingBit(global2[_wgslsmith_index_u32(11585u, 15u)]) >> (firstTrailingBit(4294967295u) % 32u)), 15u)], _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global0.yx), _wgslsmith_f_op_vec2_f32(select(global0.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yz)), select(select(vec2<bool>(var_2.b, false), vec2<bool>(var_2.b, true), var_2.b), !vec2<bool>(var_2.b, false), select(var_3.zz, var_2.c, vec2<bool>(var_3.x, var_3.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_2.a.yyy | ~(var_2.a.wxx >> (var_2.a.zxx % vec3<u32>(32u)))), vec4<u32>(max(~var_2.a.x ^ firstTrailingBit(var_2.a.x), ~(~0u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_2.a.x, 0u), ~vec2<u32>(var_5.a, var_2.a.x)), reverseBits(var_2.a.zy)), ~1u, min(~var_2.a.x, min(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 49145u), 15u)], var_2.a.x >> (1u % 32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), -181f)), 785f), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(var_5.a, global2[_wgslsmith_index_u32(72109u, 15u)], var_5.a) | var_2.a.xyw, vec3<u32>(1u, 4294967295u, var_5.a), !vec3<bool>(var_3.x, true, var_3.x)), vec3<u32>(32645u, 0u, var_5.a)), vec3<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_2.a, var_2.a) & var_2.a.x, 15u)], _wgslsmith_mod_u32(~6464u, global2[_wgslsmith_index_u32(u_input.a, 15u)] ^ 4294967295u), ~min(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.a.x, 15u)], 15u)]))));
}

