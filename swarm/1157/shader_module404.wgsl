struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(Struct_1(vec2<bool>(true, true), vec3<i32>(-35830i, 7548i, 1i), vec4<i32>(-29757i, 1i, 21334i, 0i), vec4<i32>(4448i, -51558i, -15147i, 0i)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(13889i, i32(-2147483648), 1i), vec4<i32>(-16060i, 23932i, 2147483647i, -22057i), vec4<i32>(11348i, 5151i, -32536i, 2147483647i)), Struct_1(vec2<bool>(true, true), vec3<i32>(-19796i, 0i, -11721i), vec4<i32>(-1i, i32(-2147483648), 25522i, 0i), vec4<i32>(1i, 6069i, 0i, 44816i)), 4294967295u), vec2<u32>(54275u, 0u)), Struct_3(Struct_1(vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -9676i, 2147483647i), vec4<i32>(30847i, i32(-2147483648), 40483i, -68442i), vec4<i32>(-14012i, i32(-2147483648), 8645i, 2147483647i)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(36643i, -16815i, -1i), vec4<i32>(-29013i, 19002i, -6953i, 0i), vec4<i32>(8459i, i32(-2147483648), 9824i, 37206i)), Struct_1(vec2<bool>(false, true), vec3<i32>(-22016i, -21722i, i32(-2147483648)), vec4<i32>(-26702i, 0i, -21126i, 25478i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -30649i)), 1u), vec2<u32>(4294967295u, 4294967295u)), Struct_3(Struct_1(vec2<bool>(false, false), vec3<i32>(16069i, 1i, -46298i), vec4<i32>(-1i, 16604i, -1i, -6013i), vec4<i32>(-1i, -28556i, -11386i, 47637i)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(-4813i, 0i, 9372i), vec4<i32>(-20517i, -72997i, -1i, 37474i), vec4<i32>(7252i, 30926i, -66947i, 23010i)), Struct_1(vec2<bool>(true, true), vec3<i32>(33325i, -3350i, 77867i), vec4<i32>(9577i, -35146i, -3414i, -83860i), vec4<i32>(0i, -120i, i32(-2147483648), -1i)), 704u), vec2<u32>(51947u, 39358u)), Struct_3(Struct_1(vec2<bool>(true, true), vec3<i32>(-12302i, -7960i, 0i), vec4<i32>(1i, -1i, -1i, 19809i), vec4<i32>(-18600i, 1i, 0i, -8866i)), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(0i, 0i, 0i), vec4<i32>(7862i, 1i, 2147483647i, 0i), vec4<i32>(-37148i, -14265i, -1i, 3815i)), Struct_1(vec2<bool>(true, false), vec3<i32>(14648i, -39051i, -37950i), vec4<i32>(i32(-2147483648), 0i, -1i, -5859i), vec4<i32>(-7989i, 21075i, -25903i, 0i)), 1u), vec2<u32>(4294967295u, 32514u)), Struct_3(Struct_1(vec2<bool>(true, false), vec3<i32>(27329i, 5569i, 1i), vec4<i32>(-77958i, i32(-2147483648), 14613i, -1i), vec4<i32>(-1i, -12841i, 11280i, -1i)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(25413i, -36961i, 22264i), vec4<i32>(i32(-2147483648), 1i, 66739i, -33168i), vec4<i32>(-38260i, 2147483647i, 0i, 1i)), Struct_1(vec2<bool>(false, true), vec3<i32>(8121i, 1135i, -6102i), vec4<i32>(2147483647i, 67i, 2147483647i, -3959i), vec4<i32>(1i, -13349i, 1i, 49775i)), 4294967295u), vec2<u32>(0u, 1u)), Struct_3(Struct_1(vec2<bool>(false, false), vec3<i32>(-27425i, i32(-2147483648), 19725i), vec4<i32>(i32(-2147483648), 2147483647i, -53681i, -2788i), vec4<i32>(-28553i, -5641i, 2147483647i, 2147483647i)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(-4377i, 25924i, -81107i, -10640i)), Struct_1(vec2<bool>(false, false), vec3<i32>(-61940i, -35022i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 5417i, 25i, -1i), vec4<i32>(0i, 1i, 2147483647i, i32(-2147483648))), 8299u), vec2<u32>(4294967295u, 1u)), Struct_3(Struct_1(vec2<bool>(true, false), vec3<i32>(-1i, -1267i, 26943i), vec4<i32>(2147483647i, 27251i, -39203i, -1i), vec4<i32>(6175i, -9382i, i32(-2147483648), 1i)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(2147483647i, 6230i, 21129i), vec4<i32>(2147483647i, 2147483647i, -1i, 38970i), vec4<i32>(-16520i, 1i, 8242i, i32(-2147483648))), Struct_1(vec2<bool>(false, false), vec3<i32>(84514i, 0i, -58196i), vec4<i32>(-29116i, i32(-2147483648), -15614i, 2147483647i), vec4<i32>(0i, 1i, -31746i, -19353i)), 88857u), vec2<u32>(4294967295u, 0u)), Struct_3(Struct_1(vec2<bool>(false, false), vec3<i32>(36045i, 34689i, i32(-2147483648)), vec4<i32>(-1i, -1i, i32(-2147483648), -1i), vec4<i32>(-29798i, 0i, -1i, 1i)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(23607i, -57512i, -8915i), vec4<i32>(1i, i32(-2147483648), -51345i, 9372i), vec4<i32>(-1i, -13528i, 1i, 7892i)), Struct_1(vec2<bool>(true, false), vec3<i32>(1i, -49914i, 0i), vec4<i32>(-21892i, -64724i, 33068i, 2147483647i), vec4<i32>(-20250i, 1i, 13229i, 34614i)), 1u), vec2<u32>(4294967295u, 2727u)), Struct_3(Struct_1(vec2<bool>(true, false), vec3<i32>(7475i, 14947i, i32(-2147483648)), vec4<i32>(-1i, -1i, 14900i, 27541i), vec4<i32>(0i, 2147483647i, i32(-2147483648), 0i)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(i32(-2147483648), 38209i, 0i), vec4<i32>(0i, 29445i, 44125i, -1i), vec4<i32>(2908i, -13760i, 11968i, 2147483647i)), Struct_1(vec2<bool>(true, false), vec3<i32>(30028i, 1i, 33960i), vec4<i32>(-24631i, 2147483647i, -15736i, -14257i), vec4<i32>(2147483647i, -17800i, 2147483647i, i32(-2147483648))), 1u), vec2<u32>(43556u, 4294967295u)), Struct_3(Struct_1(vec2<bool>(false, true), vec3<i32>(-15427i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), 36521i, -34404i, 57732i), vec4<i32>(2147483647i, 2147483647i, 1i, 33806i)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(-18593i, 1i, 0i), vec4<i32>(1i, 0i, -27188i, -15559i), vec4<i32>(i32(-2147483648), 1i, 26300i, 6025i)), Struct_1(vec2<bool>(false, false), vec3<i32>(52602i, -59921i, 11622i), vec4<i32>(2147483647i, -49861i, -1i, 22571i), vec4<i32>(i32(-2147483648), 33720i, -15531i, 1i)), 4294967295u), vec2<u32>(11558u, 4294967295u)), Struct_3(Struct_1(vec2<bool>(true, true), vec3<i32>(-15888i, -51546i, 1459i), vec4<i32>(2147483647i, 10989i, 0i, -1i), vec4<i32>(i32(-2147483648), -4233i, 4685i, -28902i)), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(-17479i, -50878i, 68118i), vec4<i32>(0i, -1i, -28814i, 17667i), vec4<i32>(2147483647i, 43153i, -30788i, 0i)), Struct_1(vec2<bool>(true, false), vec3<i32>(18750i, -48786i, 15106i), vec4<i32>(64141i, -22611i, 2995i, -29649i), vec4<i32>(-1i, -1i, 34715i, 10171i)), 0u), vec2<u32>(98767u, 0u)));

var<private> global1: Struct_1;

var<private> global2: array<i32, 3>;

var<private> global3: Struct_5;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: bool) -> u32 {
    var var_0 = Struct_4(global3.a, ~vec4<i32>(abs(~0i), arg_0, 2147483647i, 0i), _wgslsmith_mult_u32(~u_input.b, 8164u), Struct_3(Struct_1(select(!vec2<bool>(true, global1.a.x), !global3.a.a, arg_1), vec3<i32>(29134i, 22780i, u_input.a.x) ^ (global1.b | global3.a.d.wxy), reverseBits(global3.a.d) >> (~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), ~vec4<i32>(global1.d.x, -47529i, global2[_wgslsmith_index_u32(u_input.b, 3u)], u_input.a.x)), Struct_2(global3.a, Struct_1(select(global3.a.a, global3.a.a, arg_2), _wgslsmith_sub_vec3_i32(vec3<i32>(-10715i, global1.d.x, arg_0), vec3<i32>(arg_0, -2147483647i, arg_0)), firstTrailingBit(global1.d), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 29444i, -1i, 10158i), vec4<i32>(arg_0, global2[_wgslsmith_index_u32(u_input.b, 3u)], arg_0, arg_0))), ~u_input.b), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 19616u), vec2<u32>(1u, u_input.b), firstLeadingBit(vec2<u32>(u_input.b, 17908u))), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 63666u, u_input.b), abs(u_input.b)), !(!vec2<bool>(arg_3, true)))));
    global1 = var_0.d.a;
    var var_1 = _wgslsmith_div_u32(~var_0.c, ~(~u_input.b));
    let var_2 = Struct_2(global3.a, global3.a, u_input.b);
    global0 = array<Struct_3, 11>();
    return _wgslsmith_sub_u32(0u, max(1u, (var_2.c >> (1u % 32u)) & countOneBits(~2342u)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(Struct_1(!select(global3.a.a, vec2<bool>(true, global3.b), false), abs(global1.d.xww), (_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -3884i, 1i, global3.a.d.x), vec4<i32>(global1.c.x, u_input.a.x, -1i, global1.c.x)) & _wgslsmith_mod_vec4_i32(global3.a.c, vec4<i32>(global3.c, 0i, u_input.a.x, global1.b.x))) >> (~(~vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(global1.d.x, u_input.a.x, 7811i, 0i)), reverseBits(_wgslsmith_add_vec4_i32(firstLeadingBit(global1.c), ~global3.a.d)) | firstLeadingBit(vec4<i32>(firstLeadingBit(global3.c), -u_input.a.x, global1.d.x, _wgslsmith_sub_i32(50222i, u_input.a.x))), ~(~_wgslsmith_clamp_u32(4294967295u, u_input.b, u_input.b)) & _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 61198u, u_input.b), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)), ~vec4<u32>(u_input.b, u_input.b, 24608u, u_input.b))), Struct_3(global3.a, Struct_2(Struct_1(global1.a, vec3<i32>(-2147483647i, -9677i, 0i), -global3.a.d, global1.d), Struct_1(vec2<bool>(false, true), global3.a.b, global3.a.d, global1.d), 1u | func_3(2147483647i, global3.a.a.x, false, global3.a.a.x)), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), countOneBits(vec2<u32>(9664u, u_input.b)))));
    let var_1 = Struct_5(Struct_1(select(select(vec2<bool>(false, global1.a.x), var_0.a.a, global1.a.x), vec2<bool>(true, false), global1.a.x), vec3<i32>(_wgslsmith_sub_i32(-var_0.a.b.x, _wgslsmith_mod_i32(-13838i, u_input.a.x)), global3.a.b.x, 0i), var_0.a.c, global3.a.d), global3.a.a.x, ~(-2147483647i) << (_wgslsmith_dot_vec2_u32(var_0.d.c, reverseBits(~var_0.d.c)) % 32u));
    global1 = Struct_1(var_1.a.a, abs(-vec3<i32>(0i, -28750i, -12285i) | _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, global1.d.x, 5066i), var_0.a.d.zwx)) & _wgslsmith_mult_vec3_i32(var_0.b.ywx, ~_wgslsmith_sub_vec3_i32(vec3<i32>(30508i, global2[_wgslsmith_index_u32(0u, 3u)], -1i), vec3<i32>(1783i, -2147483647i, 16771i))), -_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.d.b.b.d, abs(var_1.a.c), vec4<i32>(-24065i, global1.d.x, 47057i, 2147483647i)), ~_wgslsmith_mod_vec4_i32(var_0.b, vec4<i32>(-26410i, var_0.b.x, -9097i, 45041i))), vec4<i32>(1i, 2147483647i, min(firstLeadingBit(~1i), _wgslsmith_mod_i32(~u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.a.d.x, 40990i, var_0.a.c.x), vec3<i32>(46481i, var_0.a.d.x, 6358i)))), min(global3.c, -2147483647i) << (u_input.b % 32u)));
    var var_2 = var_1;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1487f - -971f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -405f)))), -959f)));
    return var_1.a;
}

fn func_4(arg_0: Struct_5, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_5(func_2(), func_2().a.x, -4181i);
    var var_1 = !vec4<bool>(!(!(!arg_0.b)), arg_0.b, false, all(global3.a.a));
    var var_2 = global3.a.d;
    var var_3 = Struct_2(arg_0.a, Struct_1(var_0.a.a, ~_wgslsmith_mod_vec3_i32(global3.a.d.zzy, vec3<i32>(arg_0.a.c.x, 28248i, arg_0.a.d.x)), vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(global3.a.d, global3.a.d), vec4<i32>(select(_wgslsmith_mod_i32(0i, 3260i), select(u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 3u)], global1.a.x), true), -43637i, _wgslsmith_add_i32(global3.a.d.x ^ var_0.a.b.x, abs(global1.d.x)), global3.c)), countOneBits(~u_input.b));
    let var_4 = Struct_4(func_2(), _wgslsmith_div_vec4_i32(var_0.a.c, _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, -85372i, global3.a.c.x, -7695i) ^ global1.d, -vec4<i32>(3127i, global1.c.x, 1i, -29493i)), (global3.a.c << (vec4<u32>(0u, u_input.b, var_3.c, u_input.b) % vec4<u32>(32u))) >> (vec4<u32>(var_3.c, var_3.c, 4793u, 23629u) % vec4<u32>(32u)))), _wgslsmith_add_u32(var_3.c ^ ~(~u_input.b), min(11074u, _wgslsmith_add_u32(u_input.b, 33746u)) >> (max(44001u, ~var_3.c) % 32u)), Struct_3(var_0.a, Struct_2(Struct_1(vec2<bool>(false, false), var_0.a.b & vec3<i32>(16845i, 1i, -46422i), var_3.b.c, global1.c), Struct_1(func_2().a, vec3<i32>(global3.a.c.x, 1i, global1.c.x), global1.d, vec4<i32>(var_0.c, 23398i, -3852i, u_input.a.x) << (vec4<u32>(u_input.b, var_3.c, var_3.c, 4294967295u) % vec4<u32>(32u))), 28848u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, firstLeadingBit(11393u)), select(vec2<u32>(74933u, 71169u), ~vec2<u32>(0u, u_input.b), true))));
    return Struct_2(Struct_1(!global3.a.a, ~var_4.d.a.c.yyy, var_3.b.d, vec4<i32>(-1i) * -(~vec4<i32>(global3.c, 2147483647i, 2147483647i, 2147483647i))), func_2(), u_input.b);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_5 {
    var var_0 = Struct_5(Struct_1(!arg_3.a, _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -arg_1.a.b, func_4(Struct_5(global3.a, arg_1.a.a.x, -14398i), global1.a.x).a.d.xxx), arg_3.d, _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(24220i, -1i, global1.c.x, 4299i)), firstLeadingBit(vec4<i32>(arg_1.a.b.x, -7051i, arg_1.a.c.x, u_input.a.x))), abs(func_2().d), countOneBits(~vec4<i32>(arg_1.a.c.x, -27595i, arg_3.d.x, u_input.a.x)))), true, ~u_input.a.x >> (u_input.b % 32u));
    var var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(select(arg_3.d.yxz, ~arg_1.b.b, all(!vec2<bool>(var_0.b, var_0.a.a.x))), vec3<i32>(arg_3.d.x, arg_3.c.x, -4581i)), vec3<i32>(-arg_1.a.b.x & _wgslsmith_div_i32(arg_0, var_0.c), _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(1836i, -2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, global1.b.x), vec2<i32>(var_0.c, 12273i))), arg_1.a.c.x << (18125u % 32u)), global1.c.x));
    var_0 = Struct_5(Struct_1(func_2().a, vec3<i32>(global1.b.x, u_input.a.x, ~u_input.a.x) << (vec3<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), ~4294967295u, ~5064u) % vec3<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(32008i, ~1i, 31209i, arg_0), func_4(Struct_5(Struct_1(global1.a, vec3<i32>(var_1.x, u_input.a.x, -32219i), arg_3.c, vec4<i32>(-49840i, arg_3.b.x, 3658i, -1i)), global3.a.a.x, arg_1.a.b.x), arg_1.a.a.x).a.d), vec4<i32>(-firstLeadingBit(1i), 0i, abs(firstTrailingBit(74415i)), _wgslsmith_mod_i32(1219i, -2147483647i) << (arg_2.x % 32u))), false, func_4(Struct_5(func_2(), true, 1507i), var_0.a.a.x).a.b.x >> (arg_1.c % 32u));
    var var_2 = vec2<u32>(arg_1.c, u_input.b);
    global2 = array<i32, 3>();
    return Struct_5(func_2(), _wgslsmith_f_op_f32(f32(-1f) * -432f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-602f)) - _wgslsmith_f_op_f32(min(-2077f, 1f))), -_wgslsmith_add_i32(0i, 33703i));
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, global3.c)), ~(i32(-1i) * -3526i))), func_4(Struct_5(func_2(), -global2[_wgslsmith_index_u32(0u, 3u)] <= min(global1.d.x, global2[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_sub_i32(-62445i >> (1u % 32u), abs(1i))), any(select(select(vec3<bool>(false, global3.a.a.x, true), vec3<bool>(global1.a.x, global3.a.a.x, global1.a.x), false), select(vec3<bool>(global1.a.x, true, false), vec3<bool>(global1.a.x, false, true), true), select(vec3<bool>(true, global1.a.x, true), vec3<bool>(false, global3.a.a.x, true), global3.b)))), ~vec4<u32>(1u, 30515u, func_4(Struct_5(Struct_1(global3.a.a, vec3<i32>(-1i, global1.d.x, global1.c.x), vec4<i32>(2147483647i, -2147483647i, global3.c, -17071i), vec4<i32>(-2147483647i, 2147483647i, -1i, -19174i)), global1.a.x, -2147483647i), any(vec4<bool>(false, true, global1.a.x, false))).c, 1u & _wgslsmith_dot_vec3_u32(vec3<u32>(21132u, 37993u, 7526u), vec3<u32>(73215u, u_input.b, u_input.b))), Struct_1(func_2().a, max(global1.d.xww, -vec3<i32>(-2147483647i, global1.b.x, -30220i)) & vec3<i32>(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(4294967295u, 3u)], u_input.a.x), 0i, 0i), -vec4<i32>(global1.c.x, 1i, -59895i, -u_input.a.x), _wgslsmith_add_vec4_i32(global1.d, _wgslsmith_add_vec4_i32(select(global1.d, vec4<i32>(-1i, global2[_wgslsmith_index_u32(u_input.b, 3u)], -10592i, global1.c.x), vec4<bool>(global1.a.x, true, false, global1.a.x)), global1.d))));
    global3 = var_0;
    let var_1 = vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(~u_input.b, u_input.b), _wgslsmith_div_vec2_u32(~abs(vec2<u32>(11750u, 24832u)), ~(~vec2<u32>(10895u, 1u)))), ~((4294967295u ^ u_input.b) & ~func_4(var_0, true).c));
    let var_2 = _wgslsmith_f_op_f32(trunc(1717f));
    global3 = func_5(-27884i, func_4(Struct_5(Struct_1(select(global3.a.a, global1.a, var_0.a.a), _wgslsmith_add_vec3_i32(global1.b, var_0.a.c.wzx), vec4<i32>(global2[_wgslsmith_index_u32(var_1.x, 3u)], global2[_wgslsmith_index_u32(u_input.b, 3u)], -21187i, global1.b.x), reverseBits(var_0.a.d)), true & (4294967295u > var_1.x), -_wgslsmith_add_i32(u_input.a.x, global1.c.x)), true), vec4<u32>((43697u | var_1.x) | reverseBits(1u), _wgslsmith_mult_u32(max(abs(u_input.b), _wgslsmith_div_u32(77211u, var_1.x)), ~u_input.b), min(~(~var_1.x), ~u_input.b | 39656u), _wgslsmith_sub_u32(60461u, 31252u)), func_2());
    return Struct_2(func_2(), var_0.a, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_2(Struct_1(vec2<bool>(true, true), global1.d.zzx, -abs(vec4<i32>(47681i, var_0.b.b.x, -4154i, var_0.a.c.x)) & _wgslsmith_mod_vec4_i32(global1.d, vec4<i32>(global1.d.x, u_input.a.x, global1.b.x, 2147483647i)), global1.d), Struct_1(!select(var_0.a.a, func_4(Struct_5(var_0.a, false, global3.c), false).b.a, select(var_0.b.a.x, true, global3.a.a.x)), ~var_0.b.b, select(~(vec4<i32>(u_input.a.x, -2147483647i, global3.c, 2147483647i) & global1.c), func_1().a.d, vec4<bool>(false, all(vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, false)), false, global1.a.x)), vec4<i32>(reverseBits(16599i), -abs(global1.c.x), var_0.b.d.x, u_input.a.x)), ~(~(min(u_input.b, 1u) ^ (u_input.b | 1u))));
    var var_1 = global1.a;
    let var_2 = _wgslsmith_div_f32(-971f, 1000f);
    let var_3 = !vec3<bool>(!(func_4(Struct_5(Struct_1(var_0.a.a, vec3<i32>(global2[_wgslsmith_index_u32(16429u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)], global3.a.b.x), vec4<i32>(global3.a.b.x, global2[_wgslsmith_index_u32(var_0.c, 3u)], 15305i, u_input.a.x), vec4<i32>(u_input.a.x, 0i, -2147483647i, 1i)), global1.a.x, -1i), var_1.x).a.b.x < min(2147483647i, -33002i)), (i32(-1i) * -u_input.a.x) >= -(~var_0.b.c.x), !func_1().b.a.x);
    global2 = array<i32, 3>();
    global3 = func_5(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_0.b.c.zy, ~u_input.a), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global1.b.yy | global1.b.yy, vec2<i32>(41778i, -1i)), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.a.x, global3.a.b.x), func_2().c.ww))), Struct_2(global3.a, Struct_1(!global1.a, vec3<i32>(global1.d.x | 9266i, countOneBits(var_0.b.d.x), var_0.a.c.x & u_input.a.x), vec4<i32>(select(global2[_wgslsmith_index_u32(4294967295u, 3u)], -26689i, true), global1.d.x, global3.c, ~global2[_wgslsmith_index_u32(var_0.c, 3u)]), vec4<i32>(~u_input.a.x, var_0.b.c.x << (var_0.c % 32u), _wgslsmith_mult_i32(-22568i, global1.c.x), _wgslsmith_dot_vec2_i32(global3.a.b.yz, global1.d.yy))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(529u, 40130u, var_0.c), vec3<u32>(var_0.c, u_input.b, u_input.b)), ~vec3<u32>(4294967295u, u_input.b, 22079u)) >> (var_0.c % 32u)), firstLeadingBit(~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, 33320u, 46349u), vec4<u32>(45373u, u_input.b, u_input.b, 62598u)))), global3.a);
    global0 = array<Struct_3, 11>();
    let var_4 = var_0.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(-global1.c.zx, global1.d.yzz);
}

