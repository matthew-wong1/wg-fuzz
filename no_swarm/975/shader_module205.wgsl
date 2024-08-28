struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: f32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
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

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_2(vec4<u32>(1u, 33452u, 0u, 1u), vec3<bool>(true, false, true)), Struct_1(0i, false, false), vec4<u32>(9613u, 103498u, 70246u, 1u), Struct_2(vec4<u32>(87636u, 0u, 1u, 1u), vec3<bool>(false, false, true)), Struct_1(-1i, false, true)), Struct_3(Struct_2(vec4<u32>(77516u, 52775u, 50262u, 18964u), vec3<bool>(false, true, false)), Struct_1(-38001i, false, true), vec4<u32>(4294967295u, 51849u, 8155u, 43181u), Struct_2(vec4<u32>(35139u, 48342u, 41126u, 1u), vec3<bool>(true, false, false)), Struct_1(27440i, true, false)), Struct_3(Struct_2(vec4<u32>(17905u, 1u, 13285u, 44325u), vec3<bool>(false, true, true)), Struct_1(0i, true, false), vec4<u32>(1u, 4294967295u, 20562u, 31256u), Struct_2(vec4<u32>(0u, 0u, 9733u, 87746u), vec3<bool>(true, false, false)), Struct_1(16197i, false, true)), Struct_3(Struct_2(vec4<u32>(4294967295u, 7501u, 0u, 31294u), vec3<bool>(false, true, true)), Struct_1(-1i, true, false), vec4<u32>(0u, 15431u, 48502u, 52743u), Struct_2(vec4<u32>(0u, 4294967295u, 1u, 43845u), vec3<bool>(true, true, true)), Struct_1(-34278i, true, false)), Struct_3(Struct_2(vec4<u32>(47684u, 0u, 32773u, 0u), vec3<bool>(false, true, true)), Struct_1(i32(-2147483648), true, true), vec4<u32>(1u, 54149u, 1u, 13246u), Struct_2(vec4<u32>(0u, 4294967295u, 0u, 55338u), vec3<bool>(false, false, true)), Struct_1(1i, false, false)), Struct_3(Struct_2(vec4<u32>(23874u, 16155u, 89978u, 1u), vec3<bool>(true, false, true)), Struct_1(50228i, false, true), vec4<u32>(47067u, 4294967295u, 49748u, 38923u), Struct_2(vec4<u32>(1u, 0u, 1u, 18053u), vec3<bool>(true, true, true)), Struct_1(-1075i, false, true)), Struct_3(Struct_2(vec4<u32>(28587u, 1u, 117874u, 0u), vec3<bool>(true, true, false)), Struct_1(-28748i, true, true), vec4<u32>(0u, 64803u, 1u, 4294967295u), Struct_2(vec4<u32>(22324u, 24650u, 1u, 603u), vec3<bool>(true, true, true)), Struct_1(1629i, false, false)), Struct_3(Struct_2(vec4<u32>(0u, 1u, 4294967295u, 929u), vec3<bool>(false, true, true)), Struct_1(i32(-2147483648), true, true), vec4<u32>(1u, 63743u, 32693u, 1u), Struct_2(vec4<u32>(1u, 0u, 4294967295u, 32434u), vec3<bool>(false, false, false)), Struct_1(-29335i, false, false)), Struct_3(Struct_2(vec4<u32>(1u, 0u, 24153u, 35952u), vec3<bool>(false, true, false)), Struct_1(i32(-2147483648), true, true), vec4<u32>(1u, 0u, 1u, 25194u), Struct_2(vec4<u32>(0u, 1u, 65124u, 41752u), vec3<bool>(true, true, true)), Struct_1(-17923i, true, true)), Struct_3(Struct_2(vec4<u32>(1u, 4294967295u, 2243u, 1293u), vec3<bool>(true, true, false)), Struct_1(0i, false, true), vec4<u32>(4294967295u, 9830u, 10465u, 0u), Struct_2(vec4<u32>(0u, 4294967295u, 1u, 1u), vec3<bool>(false, false, true)), Struct_1(-36363i, true, true)), Struct_3(Struct_2(vec4<u32>(1u, 48595u, 4294967295u, 62514u), vec3<bool>(true, false, true)), Struct_1(1i, true, true), vec4<u32>(49228u, 14857u, 11054u, 1u), Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec3<bool>(false, true, false)), Struct_1(1i, true, true)), Struct_3(Struct_2(vec4<u32>(1u, 0u, 55926u, 61620u), vec3<bool>(true, true, false)), Struct_1(2147483647i, false, true), vec4<u32>(21735u, 37797u, 44980u, 85234u), Struct_2(vec4<u32>(0u, 1u, 4294967295u, 60989u), vec3<bool>(false, true, true)), Struct_1(2147483647i, true, false)), Struct_3(Struct_2(vec4<u32>(16764u, 37455u, 28787u, 67974u), vec3<bool>(false, true, true)), Struct_1(-5759i, false, true), vec4<u32>(4294967295u, 1u, 80579u, 481u), Struct_2(vec4<u32>(46327u, 79630u, 0u, 56417u), vec3<bool>(false, true, true)), Struct_1(-9307i, true, false)), Struct_3(Struct_2(vec4<u32>(4294967295u, 1u, 34194u, 55679u), vec3<bool>(false, false, false)), Struct_1(2147483647i, false, true), vec4<u32>(0u, 12237u, 7969u, 24772u), Struct_2(vec4<u32>(4769u, 1u, 0u, 33255u), vec3<bool>(false, true, false)), Struct_1(-4564i, false, false)), Struct_3(Struct_2(vec4<u32>(0u, 4294967295u, 1u, 1u), vec3<bool>(true, false, true)), Struct_1(-43284i, false, true), vec4<u32>(35988u, 1u, 47682u, 0u), Struct_2(vec4<u32>(18730u, 0u, 52664u, 5429u), vec3<bool>(true, false, false)), Struct_1(-33986i, false, true)), Struct_3(Struct_2(vec4<u32>(25147u, 4294967295u, 4294967295u, 1u), vec3<bool>(false, false, true)), Struct_1(-1i, false, true), vec4<u32>(8851u, 67975u, 0u, 1u), Struct_2(vec4<u32>(68936u, 63259u, 29398u, 40397u), vec3<bool>(false, false, false)), Struct_1(-1i, false, true)), Struct_3(Struct_2(vec4<u32>(0u, 0u, 51028u, 30998u), vec3<bool>(false, false, true)), Struct_1(i32(-2147483648), true, false), vec4<u32>(62969u, 4294967295u, 0u, 2420u), Struct_2(vec4<u32>(0u, 4294967295u, 41558u, 2369u), vec3<bool>(false, true, false)), Struct_1(-81213i, false, true)), Struct_3(Struct_2(vec4<u32>(0u, 3136u, 0u, 30004u), vec3<bool>(true, false, true)), Struct_1(2147483647i, true, false), vec4<u32>(0u, 0u, 0u, 76176u), Struct_2(vec4<u32>(1u, 70695u, 27201u, 1u), vec3<bool>(true, true, true)), Struct_1(-38629i, true, false)), Struct_3(Struct_2(vec4<u32>(43128u, 0u, 15041u, 100749u), vec3<bool>(true, true, false)), Struct_1(-15240i, false, true), vec4<u32>(30274u, 1u, 4127u, 1u), Struct_2(vec4<u32>(4294967295u, 1u, 1u, 6129u), vec3<bool>(false, true, false)), Struct_1(i32(-2147483648), true, false)), Struct_3(Struct_2(vec4<u32>(32549u, 4294967295u, 16485u, 19084u), vec3<bool>(false, false, false)), Struct_1(5736i, false, false), vec4<u32>(45407u, 0u, 0u, 0u), Struct_2(vec4<u32>(4294967295u, 14729u, 7340u, 0u), vec3<bool>(false, true, true)), Struct_1(-1i, false, false)), Struct_3(Struct_2(vec4<u32>(67634u, 20952u, 28823u, 9047u), vec3<bool>(true, true, true)), Struct_1(2147483647i, true, true), vec4<u32>(424u, 1u, 8211u, 1u), Struct_2(vec4<u32>(2931u, 1403u, 1u, 24006u), vec3<bool>(false, false, true)), Struct_1(0i, false, true)), Struct_3(Struct_2(vec4<u32>(1u, 1u, 1u, 42992u), vec3<bool>(true, false, true)), Struct_1(44615i, true, false), vec4<u32>(25071u, 58060u, 27047u, 28023u), Struct_2(vec4<u32>(1u, 1u, 21292u, 16959u), vec3<bool>(false, false, true)), Struct_1(27000i, false, true)), Struct_3(Struct_2(vec4<u32>(1u, 11165u, 4294967295u, 0u), vec3<bool>(true, true, true)), Struct_1(1i, false, true), vec4<u32>(1u, 1u, 0u, 21164u), Struct_2(vec4<u32>(0u, 67646u, 0u, 4294967295u), vec3<bool>(true, true, false)), Struct_1(1i, true, true)), Struct_3(Struct_2(vec4<u32>(1u, 59667u, 44473u, 68473u), vec3<bool>(false, true, true)), Struct_1(i32(-2147483648), true, false), vec4<u32>(4294967295u, 1u, 4294967295u, 85164u), Struct_2(vec4<u32>(91525u, 0u, 11453u, 32144u), vec3<bool>(false, true, false)), Struct_1(2147483647i, false, false)), Struct_3(Struct_2(vec4<u32>(64030u, 79165u, 5637u, 0u), vec3<bool>(false, true, false)), Struct_1(2147483647i, true, true), vec4<u32>(57587u, 39470u, 0u, 58204u), Struct_2(vec4<u32>(0u, 20961u, 3800u, 4294967295u), vec3<bool>(false, false, false)), Struct_1(52608i, true, false)), Struct_3(Struct_2(vec4<u32>(4294967295u, 1u, 37972u, 19433u), vec3<bool>(true, true, true)), Struct_1(-6001i, true, false), vec4<u32>(1u, 33925u, 4294967295u, 26791u), Struct_2(vec4<u32>(1u, 0u, 0u, 1u), vec3<bool>(false, false, false)), Struct_1(-1i, true, true)), Struct_3(Struct_2(vec4<u32>(1u, 4294967295u, 1u, 1u), vec3<bool>(true, false, true)), Struct_1(4218i, false, false), vec4<u32>(4294967295u, 1u, 0u, 1u), Struct_2(vec4<u32>(34549u, 0u, 4294967295u, 36835u), vec3<bool>(false, false, true)), Struct_1(0i, true, true)));

var<private> global1: Struct_5;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    let var_0 = -(~_wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-41337i, global1.c), vec2<i32>(u_input.a, u_input.a)))) >> (_wgslsmith_sub_u32(~global1.b.a.a.x, 1u) % 32u);
    global0 = array<Struct_3, 27>();
    global0 = array<Struct_3, 27>();
    let var_1 = (~global1.a.x >> (4294967295u % 32u)) >> (4294967295u % 32u);
    var var_2 = Struct_4(firstTrailingBit(arg_1.x & _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_1.x, var_1, 0u), max(var_1, arg_1.x), _wgslsmith_mult_u32(var_1, global1.a.x))), global0[_wgslsmith_index_u32(4294967295u, 27u)], 1314f, select(global1.a.yzy, global1.b.a.a.zxx, all(select(vec4<bool>(global1.b.e.c, true, true, true), vec4<bool>(false, false, true, global1.b.e.b), !vec4<bool>(true, global1.b.b.b, global1.b.d.b.x, global1.b.e.c)))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_2.c))));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: i32) -> vec3<f32> {
    let var_0 = true;
    global0 = array<Struct_3, 27>();
    let var_1 = global1.b.a;
    let var_2 = select(~reverseBits(-select(vec4<i32>(25151i, global1.b.b.a, global1.c, u_input.a), vec4<i32>(21779i, 24688i, -55302i, 2147483647i), true)), vec4<i32>(countOneBits(max(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.d, u_input.a), vec2<i32>(global1.b.e.a, global1.d)), u_input.a | global1.d)), u_input.a, u_input.a, _wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-40666i, -2147483647i, global1.b.b.a, 57765i), vec4<i32>(global1.b.e.a, 30640i, arg_2, 35254i)), 0i)), vec4<bool>(true, any(select(global1.b.d.b.xz, select(global1.b.a.b.zz, var_1.b.xx, false), var_1.b.yz)), var_1.b.x, global1.b.d.b.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -438f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-450f + -863f), _wgslsmith_f_op_f32(-1000f + -525f)) * _wgslsmith_f_op_f32(-1523f - _wgslsmith_f_op_f32(f32(-1f) * -404f)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -510f)), vec2<f32>(2231f, 877f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-3168f, -1849f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1225f, -600f)))))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_2.x, max(u_input.c, var_1.a))) * -497f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -633f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.x, 1413f)) * 2311f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.x * -1333f))));
}

fn func_1() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(553f, -1129f, 342f), vec3<f32>(-434f, 1692f, -1000f), vec3<bool>(false, global1.b.e.b, false))) + _wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(global1.b.b.c, global1.b.a.b.x), global1.a.x, global1.c))) - vec3<f32>(_wgslsmith_f_op_f32(floor(309f)), _wgslsmith_f_op_f32(step(194f, -941f)), _wgslsmith_f_op_f32(step(-190f, -171f)))))));
    let var_1 = firstLeadingBit(vec3<i32>(global1.b.e.a << (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global1.a.zxw, u_input.c.wwx), ~0u) % 32u), i32(-1i) * -1i, -28927i));
    global0 = array<Struct_3, 27>();
    var var_2 = global1.b.d;
    global1 = Struct_5(select(~(~vec4<u32>(8975u, 1u, var_2.a.x, var_2.a.x)), global1.a, !all(vec3<bool>(var_2.b.x, false, var_2.b.x))), global0[_wgslsmith_index_u32(63181u, 27u)], ~(-1i), var_1.x);
    return Struct_5(u_input.c, global1.b, -u_input.a, _wgslsmith_dot_vec4_i32(max(-(~vec4<i32>(global1.d, -1i, -15062i, var_1.x)), vec4<i32>(~u_input.a, -2147483647i << (var_2.a.x % 32u), ~2147483647i, var_1.x)), select(~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_1.x, u_input.a, global1.d), vec4<i32>(u_input.a, var_1.x, global1.b.b.a, global1.b.b.a)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(global1.d, var_1.x, u_input.a, -2147483647i), vec4<i32>(u_input.a, 39267i, -5692i, global1.d)), firstTrailingBit(vec4<i32>(global1.b.e.a, var_1.x, global1.b.b.a, -70695i))), select(select(vec4<bool>(false, true, var_2.b.x, var_2.b.x), vec4<bool>(false, var_2.b.x, var_2.b.x, false), global1.b.d.b.x), !vec4<bool>(global1.b.d.b.x, global1.b.e.c, false, global1.b.d.b.x), !vec4<bool>(false, false, var_2.b.x, true)))));
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: Struct_5) -> vec4<i32> {
    global0 = array<Struct_3, 27>();
    var var_0 = 0u;
    var_0 = 27131u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f) - _wgslsmith_f_op_f32(f32(-1f) * -133f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(275f - 408f), _wgslsmith_f_op_f32(f32(-1f) * -1405f), arg_1.b.b.b))))));
    global0 = array<Struct_3, 27>();
    return _wgslsmith_add_vec4_i32(vec4<i32>(max(-2147483647i, global1.b.b.a), -1i, -1i, _wgslsmith_div_i32(-2147483647i, arg_1.b.b.a >> (~arg_1.a.x % 32u))), _wgslsmith_sub_vec4_i32(max(~(~vec4<i32>(-2147483647i, -57465i, -33643i, arg_2.b.e.a)), _wgslsmith_sub_vec4_i32(-vec4<i32>(15268i, 2147483647i, global1.c, 1i), vec4<i32>(global1.c, -21724i, global1.c, 0i) ^ vec4<i32>(2147483647i, 0i, -11278i, u_input.a))), vec4<i32>(-2147483647i, _wgslsmith_mod_i32(0i, arg_2.c & arg_1.d), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c, u_input.a, global1.c) & vec3<i32>(-1i, -1i, arg_1.c), vec3<i32>(u_input.a, arg_1.d, arg_2.c)), u_input.a)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_4) -> i32 {
    let var_0 = 1414f;
    var var_1 = Struct_4(_wgslsmith_dot_vec4_u32(arg_2.b.d.a, arg_2.b.a.a), func_1().b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.c * arg_2.c), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(arg_2.b.e.a, u_input.a), ~vec4<u32>(1634u, u_input.b, u_input.b, 4967u)))))), ~(~vec3<u32>(_wgslsmith_dot_vec3_u32(global1.b.d.a.xww, global1.a.wzw), arg_2.d.x, _wgslsmith_dot_vec2_u32(global1.b.d.a.zz, vec2<u32>(u_input.c.x, 1u)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, arg_1.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-397f, arg_1.x, -194f, arg_2.c)))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0)), arg_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-438f, var_1.c))), _wgslsmith_f_op_f32(step(-3590f, _wgslsmith_f_op_f32(ceil(1230f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, var_1.c, 1862f, -549f))))));
    var var_4 = var_1.c;
    return _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_2.b.e.a, var_1.b.e.a), -3589i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(vec4<u32>(global1.b.a.a.x, 21163u, ~abs(~4259u), _wgslsmith_mod_u32(_wgslsmith_div_u32(32733u, ~global1.b.c.x), u_input.c.x)), global1.b, -12503i, func_5(select(func_4(global1.b.d.b.x || true, func_1(), Struct_5(u_input.c, global0[_wgslsmith_index_u32(global1.a.x, 27u)], 2147483647i, u_input.a)), firstTrailingBit(firstTrailingBit(vec4<i32>(-8319i, global1.b.b.a, u_input.a, 24820i))), !(!vec4<bool>(false, true, global1.b.e.c, global1.b.b.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(885f, -1000f, -1000f) + vec3<f32>(1617f, 455f, 114f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1027f, 2394f, 1000f) + vec3<f32>(-502f, 1526f, 2603f)))), Struct_4(u_input.b, func_1().b, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-449f, -390f))), u_input.c.zyy)));
    var var_1 = ~_wgslsmith_add_u32(select(~func_1().a.x, firstLeadingBit(func_1().a.x), all(vec4<bool>(var_0.b.b.c, true, false, false))), _wgslsmith_mod_u32(~55803u, 53009u));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(223f, -1146f, -1000f) * vec3<f32>(1076f, -1784f, 1063f)))) + vec3<f32>(2058f, _wgslsmith_f_op_vec3_f32(func_2(func_1().b.a.b.yz, max(u_input.b, u_input.c.x), 0i)).x, -1066f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1311f * 1787f), _wgslsmith_div_f32(-2635f, -676f)), _wgslsmith_f_op_f32(-1121f + -423f))));
    let var_3 = global1.d;
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a.x);
}

