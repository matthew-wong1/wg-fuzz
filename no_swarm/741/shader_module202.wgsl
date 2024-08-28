struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<i32>(1i, i32(-2147483648)), vec3<i32>(64671i, i32(-2147483648), -37380i)), Struct_1(vec2<i32>(-1i, 0i), vec3<i32>(2147483647i, -19921i, 9577i)), Struct_1(vec2<i32>(2147483647i, -1i), vec3<i32>(0i, 42309i, -6449i)), Struct_1(vec2<i32>(i32(-2147483648), 53522i), vec3<i32>(-1i, 21273i, 1i)), Struct_1(vec2<i32>(-1i, -1544i), vec3<i32>(-12068i, 0i, -24835i)), Struct_1(vec2<i32>(-4384i, 2147483647i), vec3<i32>(5894i, 28152i, 0i)), Struct_1(vec2<i32>(-23211i, -1i), vec3<i32>(38682i, -21130i, i32(-2147483648))), Struct_1(vec2<i32>(25999i, -8699i), vec3<i32>(2147483647i, 2147483647i, -22i)), Struct_1(vec2<i32>(4807i, 2147483647i), vec3<i32>(20430i, 0i, -12863i)), Struct_1(vec2<i32>(49442i, -1i), vec3<i32>(-25514i, -13774i, 1i)), Struct_1(vec2<i32>(12902i, 1i), vec3<i32>(0i, 4351i, 12530i)), Struct_1(vec2<i32>(-24640i, 40697i), vec3<i32>(31003i, 108672i, i32(-2147483648))), Struct_1(vec2<i32>(0i, 2147483647i), vec3<i32>(30154i, -1i, 0i)), Struct_1(vec2<i32>(-1i, -7384i), vec3<i32>(-10251i, i32(-2147483648), -74715i)), Struct_1(vec2<i32>(-31966i, -1i), vec3<i32>(-28323i, i32(-2147483648), -4922i)), Struct_1(vec2<i32>(2147483647i, -67328i), vec3<i32>(1i, i32(-2147483648), 9704i)), Struct_1(vec2<i32>(-18193i, i32(-2147483648)), vec3<i32>(-26728i, -1i, -1i)), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec3<i32>(2147483647i, -24688i, 2147483647i)), Struct_1(vec2<i32>(-1i, 2147483647i), vec3<i32>(30642i, 1i, -1804i)), Struct_1(vec2<i32>(19870i, i32(-2147483648)), vec3<i32>(6597i, -117i, -193i)), Struct_1(vec2<i32>(i32(-2147483648), 55116i), vec3<i32>(-6239i, 4534i, 0i)), Struct_1(vec2<i32>(1i, -3304i), vec3<i32>(1i, 1i, 39151i)), Struct_1(vec2<i32>(2574i, 1i), vec3<i32>(13567i, -36331i, 0i)), Struct_1(vec2<i32>(-1i, 1i), vec3<i32>(-1i, 2147483647i, 0i)), Struct_1(vec2<i32>(-106946i, 15719i), vec3<i32>(i32(-2147483648), -69593i, 2147483647i)), Struct_1(vec2<i32>(-3493i, i32(-2147483648)), vec3<i32>(15728i, i32(-2147483648), -1i)), Struct_1(vec2<i32>(24891i, 2147483647i), vec3<i32>(-25928i, -25368i, 2147483647i)), Struct_1(vec2<i32>(0i, -79777i), vec3<i32>(2147483647i, i32(-2147483648), -12928i)), Struct_1(vec2<i32>(0i, 1i), vec3<i32>(2147483647i, -1i, -6121i)), Struct_1(vec2<i32>(2147483647i, -1i), vec3<i32>(42375i, 26082i, i32(-2147483648))), Struct_1(vec2<i32>(-24376i, 42832i), vec3<i32>(2147483647i, -50665i, -5300i)), Struct_1(vec2<i32>(2147483647i, -13465i), vec3<i32>(-5600i, -5188i, -33813i)));

var<private> global2: vec3<bool>;

var<private> global3: array<vec4<bool>, 29>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = ~(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_2.a.x), _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(u_input.b.x, -637i))), _wgslsmith_mod_i32(firstTrailingBit(arg_2.b.x), -48394i | arg_0), max(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, u_input.c.x, arg_0), vec3<i32>(arg_0, 676i, arg_0)), 34739i)));
    let var_1 = global1[_wgslsmith_index_u32(min(1u, ~_wgslsmith_div_u32(_wgslsmith_sub_u32(~0u, 1u), 1u)), 32u)];
    global0 = 9469u;
    let var_2 = !vec3<bool>(!any(vec4<bool>(true, true, true, false)), !(!global2.x), true);
    let var_3 = select(var_2.zz, var_2.zx, !all(!var_2.xz));
    return abs(~(~abs(~vec2<u32>(10380u, 4294967295u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2 - -240f), _wgslsmith_f_op_f32(floor(arg_2))));
    let var_1 = abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-u_input.c.x, _wgslsmith_mult_i32(-1i, 70592i), abs(55896i), _wgslsmith_clamp_i32(54518i, u_input.c.x, 1637i)), max(vec4<i32>(-26345i, -22964i, -2147483647i, u_input.a.x), vec4<i32>(u_input.b.x, -27071i, 50083i, u_input.b.x)) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.a.x, -45378i), vec4<i32>(-31252i, -27726i, u_input.c.x, u_input.c.x)))) | vec4<i32>(u_input.b.x | _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, u_input.a.x, u_input.b.x), abs(vec3<i32>(u_input.c.x, 1i, u_input.a.x))), abs(-u_input.c.x), u_input.a.x, -min(min(-29782i, u_input.a.x), u_input.a.x));
    global3 = array<vec4<bool>, 29>();
    global1 = array<Struct_1, 32>();
    var var_2 = _wgslsmith_mult_vec4_i32(-(vec4<i32>(1i, countOneBits(var_1.x), abs(var_1.x), var_1.x) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 4294967295u, 63305u), arg_0) % vec4<u32>(32u))), var_1);
    return 1u | arg_0.x;
}

fn func_2() -> vec2<i32> {
    var var_0 = ~u_input.a;
    var var_1 = global1[_wgslsmith_index_u32(func_4(_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 73187u, 1u, 21665u), global3[_wgslsmith_index_u32(16563u, 29u)]) | vec4<u32>(~4294967295u, 1u, 39756u, 1u), ~(_wgslsmith_add_vec4_u32(vec4<u32>(49101u, 4406u, 0u, 0u), vec4<u32>(42125u, 1u, 63177u, 1u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))), select(~firstLeadingBit(~vec2<u32>(0u, 1u)), func_3(14222i, all(!vec3<bool>(global2.x, global2.x, false)), Struct_1(max(u_input.c, u_input.b), vec3<i32>(39406i, u_input.c.x, -2147483647i))), global2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1086f - -832f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-436f))))))), 32u)];
    let var_2 = 26533u;
    var var_3 = global2.x;
    var var_4 = !select(vec3<bool>(select(global2.x, select(true, global2.x, false), all(vec3<bool>(true, true, true))), true, all(select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(true, true, global2.x), vec3<bool>(false, false, global2.x)))), !select(select(vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, global2.x, global2.x), true), select(vec3<bool>(global2.x, true, true), vec3<bool>(true, false, global2.x), vec3<bool>(global2.x, true, global2.x)), true), !global2.x);
    return u_input.c;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(-(func_2() >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(-2147483647i, -1i), u_input.c.x));
    let var_1 = global1[_wgslsmith_index_u32(17624u, 32u)];
    var_0 = global1[_wgslsmith_index_u32((_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, ~14348u), _wgslsmith_div_u32(min(4294967295u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(8004u, 0u, 4294967295u, 23932u), vec4<u32>(1u, 36238u, 20164u, 0u))), 41665u) >> (func_3(var_0.a.x, global2.x, Struct_1(_wgslsmith_div_vec2_i32(var_0.a, vec2<i32>(var_0.a.x, var_0.b.x)), vec3<i32>(-2147483647i, var_0.b.x, 1i))).x % 32u)) ^ ~(~firstLeadingBit(41010u)), 32u)];
    let var_2 = ~(67954u >> (1u % 32u));
    global0 = reverseBits(56704u);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 29>();
    global0 = _wgslsmith_mult_u32(abs(1u), ~func_1());
    var var_0 = Struct_1(vec2<i32>(func_2().x, u_input.c.x), firstLeadingBit(vec3<i32>(u_input.a.x, 1i, u_input.c.x) & countOneBits(firstTrailingBit(vec3<i32>(1i, u_input.c.x, -1i)))));
    let var_1 = ~(~0u);
    global2 = !vec3<bool>(false, global2.x | select(false, true, true), all(vec4<bool>(global2.x, all(vec2<bool>(global2.x, false)), all(vec3<bool>(global2.x, global2.x, global2.x)), global2.x | global2.x)));
    let var_2 = (var_0.b.x | 15407i) & var_0.b.x;
    global3 = array<vec4<bool>, 29>();
    global0 = ~select(41907u, func_1(), true);
    let x = u_input.a;
    s_output = StorageBuffer(-21524i, -var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -539f), vec2<u32>(2540u, ~0u), abs(_wgslsmith_div_vec3_i32(~vec3<i32>(-51619i, 1i, -2147483647i), ~var_0.b)) ^ -(-var_0.b & select(var_0.b, vec3<i32>(var_0.b.x, var_2, var_2), vec3<bool>(global2.x, false, global2.x))));
}

