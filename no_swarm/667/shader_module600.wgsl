struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: vec2<i32>;

var<private> global1: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(45597u, 20969u), vec2<u32>(1u, 7001u), vec2<u32>(39962u, 55975u), vec2<u32>(4294967295u, 808u), vec2<u32>(0u, 51585u), vec2<u32>(70442u, 24407u), vec2<u32>(38354u, 6999u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(44792u, 4294967295u), vec2<u32>(21459u, 1u), vec2<u32>(9598u, 4294967295u), vec2<u32>(1u, 44568u), vec2<u32>(1u, 27058u), vec2<u32>(1u, 48083u), vec2<u32>(4294967295u, 0u), vec2<u32>(52290u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(14860u, 67926u), vec2<u32>(62624u, 51172u), vec2<u32>(1u, 29977u));

var<private> global2: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(true, -329f), Struct_3(false, -566f), Struct_3(false, -925f), Struct_3(true, 937f), Struct_3(false, 873f), Struct_3(false, 632f), Struct_3(true, -1282f), Struct_3(true, 561f), Struct_3(true, 1000f), Struct_3(true, 1738f), Struct_3(false, -595f), Struct_3(false, 534f), Struct_3(false, 297f), Struct_3(false, 1312f), Struct_3(false, 1588f), Struct_3(true, -371f), Struct_3(false, 807f), Struct_3(false, 1175f), Struct_3(false, -1113f), Struct_3(false, -918f), Struct_3(false, -225f));

var<private> global3: i32 = 0i;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = select((max(_wgslsmith_mult_vec4_i32(vec4<i32>(-24566i, -1i, global0.x, -20045i), vec4<i32>(25244i, global0.x, 2147483647i, 42666i)), vec4<i32>(-2147483647i, 6071i, global0.x, -2147483647i) | vec4<i32>(global0.x, global0.x, -1i, global0.x)) & ~abs(vec4<i32>(global0.x, global0.x, -24212i, global0.x))) & (vec4<i32>(firstTrailingBit(global0.x), max(-2147483647i, 103069i), global0.x ^ global0.x, global0.x) << (max(select(vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 72338u), false), vec4<u32>(u_input.a.x, 12461u, u_input.a.x, u_input.a.x) & vec4<u32>(82484u, 35752u, u_input.a.x, 31228u)) % vec4<u32>(32u))), max(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-1i, -2147483647i, global0.x, 13377i)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, -2147483647i, global0.x), vec4<i32>(global0.x, global0.x, 39038i, -1i))), _wgslsmith_mod_vec4_i32(select(vec4<i32>(-33931i, -10844i, -12041i, 1i), vec4<i32>(global0.x, 3398i, global0.x, global0.x), vec4<bool>(true, true, true, false)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 7970i, global0.x, global0.x), vec4<i32>(global0.x, global0.x, -27042i, 40866i))), vec4<i32>(-6736i, min(19444i, global0.x), global0.x, global0.x)), -(~vec4<i32>(global0.x, global0.x, global0.x, 4028i) & vec4<i32>(-1i, -44716i, global0.x, global0.x))), (1141f >= arg_0.x) & !any(vec2<bool>(true, true)));
    global1 = array<vec2<u32>, 22>();
    global1 = array<vec2<u32>, 22>();
    var var_1 = firstLeadingBit(select((~vec4<i32>(var_0.x, 14788i, global0.x, -1i) | vec4<i32>(38514i, 1i, -1i, var_0.x)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(5740u, u_input.a.x, u_input.a.x, 4294967295u), abs(vec4<u32>(43242u, 45864u, 56786u, u_input.a.x))) % vec4<u32>(32u)), ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 2147483647i, var_0.x), vec3<i32>(global0.x, global0.x, 29092i)), global0.x ^ global0.x, global0.x, var_0.x), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    global0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, -24557i), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(~var_1.x, _wgslsmith_add_i32(-53951i, global0.x)), -vec2<i32>(0i, global0.x))), var_0.yz);
    return true;
}

fn func_2(arg_0: Struct_3) -> u32 {
    global2 = array<Struct_3, 21>();
    var var_0 = select(select(select(!vec3<bool>(arg_0.a, false, true), select(vec3<bool>(arg_0.a, true, arg_0.a), !vec3<bool>(false, arg_0.a, arg_0.a), arg_0.a & arg_0.a), !(!vec3<bool>(arg_0.a, false, true))), select(vec3<bool>(arg_0.a && true, select(arg_0.a, arg_0.a, false), arg_0.a), select(vec3<bool>(false, arg_0.a, true), !vec3<bool>(arg_0.a, arg_0.a, true), !vec3<bool>(false, arg_0.a, true)), vec3<bool>(true, true, true)), vec3<bool>(arg_0.a, _wgslsmith_f_op_f32(arg_0.b - arg_0.b) != arg_0.b, all(vec2<bool>(arg_0.a, true)))), vec3<bool>(all(vec3<bool>(true, true, true)), arg_0.a, arg_0.a), select(!(!(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), vec3<bool>(!any(vec2<bool>(arg_0.a, arg_0.a)), true, func_3(vec4<f32>(-362f, -1285f, 1000f, -2666f))), !any(select(vec4<bool>(false, arg_0.a, arg_0.a, true), vec4<bool>(false, arg_0.a, arg_0.a, true), vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a)))));
    global0 = -max(vec2<i32>(-75118i, countOneBits(1i)), ~vec2<i32>(-1i, global0.x));
    global0 = ~vec2<i32>(-2147483647i, reverseBits(-_wgslsmith_add_i32(29734i, 1i)));
    global2 = array<Struct_3, 21>();
    return ~u_input.a.x << (u_input.a.x % 32u);
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~u_input.a.x, ~_wgslsmith_sub_u32(0u, func_2(Struct_3(false, arg_3.d.x)))), 21u)];
    var var_1 = vec4<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 844f)) <= -412f), abs(1u) >= ~u_input.a.x, !all(!select(vec2<bool>(true, true), vec2<bool>(arg_3.b.x, arg_3.b.x), vec2<bool>(var_0.a, true))), true);
    global0 = countOneBits(arg_3.c.wy);
    let var_2 = firstTrailingBit(~max(~vec3<u32>(4294967295u, u_input.a.x, 2699u), ~vec3<u32>(10373u, 29341u, 44544u))) ^ _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(4999u, 20278u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 0u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, 0u, u_input.a.x), abs(vec3<u32>(u_input.a.x, u_input.a.x, 7681u)) & vec3<u32>(u_input.a.x, u_input.a.x, 66635u)));
    var var_3 = Struct_2(arg_3);
    return var_3.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global0.x;
    let var_0 = -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, global0.x) & _wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, -72316i), vec2<i32>(-1i, -2147483647i)), vec2<i32>(func_1(vec3<f32>(-384f, 395f, -670f), global0.x, vec4<i32>(global0.x, global0.x, 12921i, 647i), Struct_1(-2147483647i, vec2<bool>(false, true), vec4<i32>(1i, 78773i, global0.x, 21704i), vec4<f32>(-1314f, -457f, -179f, 849f), global0.x)), -global0.x)), 17101i | (_wgslsmith_dot_vec3_i32(vec3<i32>(15502i, global0.x, -26140i), vec3<i32>(-1i, global0.x, global0.x)) >> (~0u % 32u)));
    let var_1 = Struct_2(Struct_1(i32(-1i) * -2147483647i, !vec2<bool>(any(vec2<bool>(false, false)), true), firstTrailingBit(vec4<i32>(var_0, global0.x ^ global0.x, 19734i, 20752i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1054f, -292f, -1343f, 491f)))), 1i));
    global1 = array<vec2<u32>, 22>();
    var var_2 = 120552u;
    global2 = array<Struct_3, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_add_u32(44129u, firstLeadingBit(1u ^ u_input.a.x)), 4294967295u));
}

